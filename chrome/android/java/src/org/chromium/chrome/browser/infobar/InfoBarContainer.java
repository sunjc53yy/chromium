// Copyright 2013 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package org.chromium.chrome.browser.infobar;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;

import org.chromium.base.CalledByNative;
import org.chromium.base.VisibleForTesting;
import org.chromium.chrome.R;
import org.chromium.chrome.browser.EmptyTabObserver;
import org.chromium.chrome.browser.Tab;
import org.chromium.chrome.browser.TabObserver;
import org.chromium.content_public.browser.WebContents;
import org.chromium.ui.UiUtils;
import org.chromium.ui.base.DeviceFormFactor;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;


/**
 * A container for all the infobars of a specific tab.
 * Note that infobars creation can be initiated from Java of from native code.
 * When initiated from native code, special code is needed to keep the Java and native infobar in
 * sync, see NativeInfoBar.
 */
public class InfoBarContainer extends ScrollView {
    private static final String TAG = "InfoBarContainer";
    private static final long REATTACH_FADE_IN_MS = 250;
    private static final int TAB_STRIP_AND_TOOLBAR_HEIGHT_PHONE_DP = 56;
    private static final int TAB_STRIP_AND_TOOLBAR_HEIGHT_TABLET_DP = 96;

    /**
     * A listener for the InfoBar animation.
     */
    public interface InfoBarAnimationListener {
        /**
         * Notifies the subscriber when an animation is completed.
         */
        void notifyAnimationFinished(int animationType);
    }

    private static class InfoBarTransitionInfo {
        // InfoBar being animated.
        public InfoBar target;

        // View to replace the current View shown by the ContentWrapperView.
        public View toShow;

        // Which type of animation needs to be performed.
        public int animationType;

        public InfoBarTransitionInfo(InfoBar bar, View view, int type) {
            assert type >= AnimationHelper.ANIMATION_TYPE_SHOW;
            assert type < AnimationHelper.ANIMATION_TYPE_BOUNDARY;

            target = bar;
            toShow = view;
            animationType = type;
        }
    }

    private InfoBarAnimationListener mAnimationListener;

    // Native InfoBarContainer pointer which will be set by nativeInit()
    private long mNativeInfoBarContainer;

    private final Activity mActivity;

    private final AutoLoginDelegate mAutoLoginDelegate;

    // The list of all infobars in this container, regardless of whether they've been shown yet.
    private final ArrayList<InfoBar> mInfoBars = new ArrayList<InfoBar>();

    // We only animate changing infobars one at a time.
    private final ArrayDeque<InfoBarTransitionInfo> mInfoBarTransitions;

    // Animation currently moving InfoBars around.
    private AnimationHelper mAnimation;
    private final FrameLayout mAnimationSizer;

    // True when this container has been emptied and its native counterpart has been destroyed.
    private boolean mDestroyed = false;

    // The id of the tab associated with us. Set to Tab.INVALID_TAB_ID if no tab is associated.
    private int mTabId;

    // Parent view that contains us.
    private ViewGroup mParentView;

    // The LinearLayout that holds the infobars. This is the only child of the InfoBarContainer.
    private LinearLayout mLinearLayout;

    // These values are used in onLayout() to keep the infobars fixed to the bottom of the screen
    // when infobars are added or removed.
    private int mHeight;
    private int mInnerHeight;
    private int mDistanceFromBottom;

    private Paint mTopBorderPaint;

    // Keeps the infobars from becoming visible when they normally would.
    private boolean mDoStayInvisible;
    private TabObserver mTabObserver;

    public InfoBarContainer(Activity activity, AutoLoginProcessor autoLoginProcessor,
            int tabId, ViewGroup parentView, WebContents webContents) {
        super(activity);

        // Workaround for http://crbug.com/407149. See explanation in onMeasure() below.
        setVerticalScrollBarEnabled(false);

        FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(
                LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT, Gravity.BOTTOM);
        int topMarginDp = DeviceFormFactor.isTablet(activity)
                ? TAB_STRIP_AND_TOOLBAR_HEIGHT_TABLET_DP
                : TAB_STRIP_AND_TOOLBAR_HEIGHT_PHONE_DP;
        lp.topMargin = Math.round(topMarginDp * getResources().getDisplayMetrics().density);
        setLayoutParams(lp);

        mLinearLayout = new LinearLayout(activity);
        mLinearLayout.setOrientation(LinearLayout.VERTICAL);
        addView(mLinearLayout,
                new FrameLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));

        mAnimationListener = null;
        mInfoBarTransitions = new ArrayDeque<InfoBarTransitionInfo>();

        mAutoLoginDelegate = new AutoLoginDelegate(autoLoginProcessor, activity);
        mActivity = activity;
        mTabId = tabId;
        mParentView = parentView;

        mAnimationSizer = new FrameLayout(activity);
        mAnimationSizer.setVisibility(INVISIBLE);

        // Chromium's InfoBarContainer may add an InfoBar immediately during this initialization
        // call, so make sure everything in the InfoBarContainer is completely ready beforehand.
        mNativeInfoBarContainer = nativeInit(webContents, mAutoLoginDelegate);
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);

        // Only enable scrollbars when the view is actually scrollable.
        // This prevents 10-15 frames of jank that would otherwise occur 1.2 seconds after the
        // InfoBarContainer is attached to the window. See: http://crbug.com/407149
        boolean canScroll = mLinearLayout.getMeasuredHeight() > getMeasuredHeight();
        if (canScroll != isVerticalScrollBarEnabled()) {
            setVerticalScrollBarEnabled(canScroll);
        }
    }

    /**
     * @return The LinearLayout that holds the infobars (i.e. the ContentWrapperViews).
     */
    LinearLayout getLinearLayout() {
        return mLinearLayout;
    }

    @VisibleForTesting
    public void setAnimationListener(InfoBarAnimationListener listener) {
        mAnimationListener = listener;
    }

    @VisibleForTesting
    public InfoBarAnimationListener getAnimationListener() {
        return mAnimationListener;
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        // Trap any attempts to fiddle with the infobars while we're animating.
        return super.onInterceptTouchEvent(ev) || mAnimation != null;
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        // Consume all touch events so they do not reach the ContentView.
        return true;
    }

    @Override
    public boolean onHoverEvent(MotionEvent event) {
        super.onHoverEvent(event);
        // Consume all hover events so they do not reach the ContentView. In touch exploration mode,
        // this prevents the user from interacting with the part of the ContentView behind the
        // infobars. http://crbug.com/430701
        return true;
    }

    private void addToParentView() {
        if (mParentView != null && mParentView.indexOfChild(this) == -1) {
            mParentView.addView(this);
        }
    }

    public void removeFromParentView() {
        if (getParent() != null) {
            ((ViewGroup) getParent()).removeView(this);
        }
    }

    /**
     * Called when the parent {@link android.view.ViewGroup} has changed for
     * this container.
     */
    public void onParentViewChanged(int tabId, ViewGroup parentView) {
        mTabId = tabId;
        mParentView = parentView;

        removeFromParentView();
        addToParentView();
    }

    /**
     * Call with {@code true} when a higher priority bottom element is visible to keep the infobars
     * from ever becoming visible.  Call with {@code false} to restore normal visibility behavior.
     * @param doStayInvisible Whether the infobars should stay invisible even when they would
     *        normally become visible.
     * @param tab The current Tab.
     */
    public void setDoStayInvisible(boolean doStayInvisible, Tab tab) {
        mDoStayInvisible = doStayInvisible;
        if (mTabObserver == null) mTabObserver = createTabObserver();
        if (doStayInvisible) {
            tab.addObserver(mTabObserver);
        } else {
            tab.removeObserver(mTabObserver);
        }
    }

    /**
     * Creates a TabObserver for monitoring a Tab, used to reset internal settings when a
     * navigation is done.
     * @return TabObserver that can be used to monitor a Tab.
     */
    private TabObserver createTabObserver() {
        return new EmptyTabObserver() {
            @Override
            public void onDidNavigateMainFrame(Tab tab, String url, String baseUrl,
                    boolean isNavigationToDifferentPage, boolean isFragmentNavigation,
                    int statusCode) {
                setDoStayInvisible(false, tab);
            }
        };
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!mDoStayInvisible) {
            ObjectAnimator.ofFloat(this, "alpha", 0.f, 1.f).setDuration(REATTACH_FADE_IN_MS)
                    .start();
            setVisibility(VISIBLE);
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setVisibility(INVISIBLE);
    }

    /**
     * Adds an InfoBar to the view hierarchy.
     * @param infoBar InfoBar to add to the View hierarchy.
     */
    @CalledByNative
    public void addInfoBar(InfoBar infoBar) {
        assert !mDestroyed;
        if (infoBar == null) {
            return;
        }
        if (mInfoBars.contains(infoBar)) {
            assert false : "Trying to add an info bar that has already been added.";
            return;
        }

        // We add the infobar immediately to mInfoBars but we wait for the animation to end to
        // notify it's been added, as tests rely on this notification but expects the infobar view
        // to be available when they get the notification.
        mInfoBars.add(infoBar);
        infoBar.setContext(mActivity);
        infoBar.setInfoBarContainer(this);

        enqueueInfoBarAnimation(infoBar, null, AnimationHelper.ANIMATION_TYPE_SHOW);
    }

    /**
     * Returns the latest InfoBarTransitionInfo that deals with the given InfoBar.
     * @param toFind InfoBar that we're looking for.
     */
    public InfoBarTransitionInfo findLastTransitionForInfoBar(InfoBar toFind) {
        Iterator<InfoBarTransitionInfo> iterator = mInfoBarTransitions.descendingIterator();
        while (iterator.hasNext()) {
            InfoBarTransitionInfo info = iterator.next();
            if (info.target == toFind) return info;
        }
        return null;
    }

    /**
     * Animates swapping out the current View in the {@code infoBar} with {@code toShow} without
     * destroying or dismissing the entire InfoBar.
     * @param infoBar InfoBar that is having its content replaced.
     * @param toShow View representing the InfoBar's new contents.
     */
    public void swapInfoBarViews(InfoBar infoBar, View toShow) {
        assert !mDestroyed;

        if (!mInfoBars.contains(infoBar)) {
            assert false : "Trying to swap an InfoBar that is not in this container.";
            return;
        }

        InfoBarTransitionInfo transition = findLastTransitionForInfoBar(infoBar);
        if (transition != null && transition.toShow == toShow) {
            assert false : "Tried to enqueue the same swap twice in a row.";
            return;
        }

        enqueueInfoBarAnimation(infoBar, toShow, AnimationHelper.ANIMATION_TYPE_SWAP);
    }

    /**
     * Removes an InfoBar from the view hierarchy.
     * @param infoBar InfoBar to remove from the View hierarchy.
     */
    public void removeInfoBar(InfoBar infoBar) {
        assert !mDestroyed;

        if (!mInfoBars.remove(infoBar)) {
            assert false : "Trying to remove an InfoBar that is not in this container.";
            return;
        }

        // If an InfoBar is told to hide itself before it has a chance to be shown, don't bother
        // with animating any of it.
        boolean collapseAnimations = false;
        ArrayDeque<InfoBarTransitionInfo> transitionCopy =
                new ArrayDeque<InfoBarTransitionInfo>(mInfoBarTransitions);
        for (InfoBarTransitionInfo info : transitionCopy) {
            if (info.target == infoBar) {
                if (info.animationType == AnimationHelper.ANIMATION_TYPE_SHOW) {
                    // We can assert that two attempts to show the same InfoBar won't be in the
                    // deque simultaneously because of the check in addInfoBar().
                    assert !collapseAnimations;
                    collapseAnimations = true;
                }
                if (collapseAnimations) {
                    mInfoBarTransitions.remove(info);
                }
            }
        }

        if (!collapseAnimations) {
            enqueueInfoBarAnimation(infoBar, null, AnimationHelper.ANIMATION_TYPE_HIDE);
        }
    }

    /**
     * Enqueue a new animation to run and kicks off the animation sequence.
     */
    private void enqueueInfoBarAnimation(InfoBar infoBar, View toShow, int animationType) {
        InfoBarTransitionInfo info = new InfoBarTransitionInfo(infoBar, toShow, animationType);
        mInfoBarTransitions.add(info);
        processPendingInfoBars();
    }

    @Override
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        // Hide the infobars when the keyboard is showing.
        boolean isShowing = (getVisibility() == View.VISIBLE);
        if (UiUtils.isKeyboardShowing(mActivity, this)) {
            if (isShowing) {
                setVisibility(View.INVISIBLE);
            }
        } else {
            if (!isShowing && !mDoStayInvisible) {
                setVisibility(View.VISIBLE);
            }
        }
        super.onLayout(changed, l, t, r, b);

        // Keep the infobars fixed to the bottom of the screen when infobars are added or removed.
        // Otherwise, infobars jump around when appearing or disappearing on small devices.
        int newHeight = getHeight();
        int newInnerHeight = mLinearLayout.getHeight();
        if (mInnerHeight != newInnerHeight) {
            int newScrollY = newInnerHeight - newHeight - mDistanceFromBottom;
            scrollTo(0, newScrollY);
        }
        mHeight = newHeight;
        mInnerHeight = newInnerHeight;
        mDistanceFromBottom = mInnerHeight - mHeight - getScrollY();
    }

    @Override
    protected void onScrollChanged(int l, int t, int oldl, int oldt) {
        super.onScrollChanged(l, t, oldl, oldt);
        mDistanceFromBottom = mInnerHeight - mHeight - getScrollY();
    }

    @Override
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);

        // If the infobars overflow the ScrollView, draw a border at the top of the ScrollView.
        // This prevents the topmost infobar from blending into the page when fullscreen mode
        // is active.
        if (getScrollY() != 0) {
            if (mTopBorderPaint == null) {
                mTopBorderPaint = new Paint();
                mTopBorderPaint.setColor(
                        getResources().getColor(R.color.infobar_background_separator));
            }
            int height = ContentWrapperView.getBoundaryHeight(getContext());
            canvas.drawRect(0, getScrollY(), getWidth(), getScrollY() + height, mTopBorderPaint);
        }
    }

    /**
     * @return True when this container has been emptied and its native counterpart has been
     *         destroyed.
     */
    public boolean hasBeenDestroyed() {
        return mDestroyed;
    }

    private void processPendingInfoBars() {
        if (mAnimation != null || mInfoBarTransitions.isEmpty()) return;

        // Start animating what has to be animated.
        InfoBarTransitionInfo info = mInfoBarTransitions.remove();
        View toShow = info.toShow;
        ContentWrapperView targetView;

        addToParentView();

        if (info.animationType == AnimationHelper.ANIMATION_TYPE_SHOW) {
            targetView = info.target.getContentWrapper(true);
            assert mInfoBars.contains(info.target);
            toShow = targetView.detachCurrentView();
            mLinearLayout.addView(targetView, 0,
                    new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT));
        } else {
            targetView = info.target.getContentWrapper(false);
        }

        // Kick off the animation.
        mAnimation = new AnimationHelper(this, targetView, info.target, toShow, info.animationType);
        mAnimation.start();
    }

    // Called by the tab when it has started loading a new page.
    public void onPageStarted() {
        LinkedList<InfoBar> barsToRemove = new LinkedList<InfoBar>();

        for (InfoBar infoBar : mInfoBars) {
            if (infoBar.shouldExpire()) {
                barsToRemove.add(infoBar);
            }
        }

        for (InfoBar infoBar : barsToRemove) {
            infoBar.dismissJavaOnlyInfoBar();
        }
    }

    /**
     * Returns the id of the tab we are associated with.
     */
    public int getTabId() {
        return mTabId;
    }

    public void destroy() {
        mDestroyed = true;
        mLinearLayout.removeAllViews();
        if (mNativeInfoBarContainer != 0) {
            nativeDestroy(mNativeInfoBarContainer);
        }
        mInfoBarTransitions.clear();
    }

    /**
     * @return all of the InfoBars held in this container.
     */
    @VisibleForTesting
    public ArrayList<InfoBar> getInfoBars() {
        return mInfoBars;
    }

    /**
     * Dismisses all {@link AutoLoginInfoBar}s in this {@link InfoBarContainer} that are for
     * {@code accountName} and {@code authToken}.  This also resets all {@link InfoBar}s that are
     * for a different request.
     * @param accountName The name of the account request is being accessed for.
     * @param authToken The authentication token access is being requested for.
     * @param success Whether or not the authentication attempt was successful.
     * @param result The resulting token for the auto login request (ignored if {@code success} is
     *               {@code false}.
     */
    public void processAutoLogin(String accountName, String authToken, boolean success,
            String result) {
        mAutoLoginDelegate.dismissAutoLogins(accountName, authToken, success, result);
    }

    /**
     * Dismiss all auto logins infobars without processing any result.
     */
    public void dismissAutoLoginInfoBars() {
        mAutoLoginDelegate.dismissAutoLogins("", "", false, "");
    }

    public void prepareTransition(View toShow) {
        if (toShow != null) {
            // In order to animate the addition of the infobar, we need a layout first.
            // Attach the child to invisible layout so that we can get measurements for it without
            // moving everything in the real container.
            ViewGroup parent = (ViewGroup) toShow.getParent();
            if (parent != null) parent.removeView(toShow);

            assert mAnimationSizer.getParent() == null;
            mParentView.addView(mAnimationSizer, new FrameLayout.LayoutParams(
                    LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
            mAnimationSizer.addView(toShow, 0,
                    new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
            mAnimationSizer.requestLayout();
        }
    }

    /**
     * Finishes off whatever animation is running.
     */
    public void finishTransition() {
        assert mAnimation != null;

        // If the InfoBar was hidden, get rid of its View entirely.
        if (mAnimation.getAnimationType() == AnimationHelper.ANIMATION_TYPE_HIDE) {
            mLinearLayout.removeView(mAnimation.getTarget());
        }

        // Reset all translations and put everything where they need to be.
        for (int i = 0; i < mLinearLayout.getChildCount(); ++i) {
            View view = mLinearLayout.getChildAt(i);
            view.setTranslationY(0);
        }
        requestLayout();

        // If there are no infobars shown, there is no need to keep the infobar container in the
        // view hierarchy.
        if (mLinearLayout.getChildCount() == 0) {
            removeFromParentView();
        }

        if (mAnimationSizer.getParent() != null) {
            ((ViewGroup) mAnimationSizer.getParent()).removeView(mAnimationSizer);
        }

        // Notify interested parties and move on to the next animation.
        if (mAnimationListener != null) {
            mAnimationListener.notifyAnimationFinished(mAnimation.getAnimationType());
        }
        mAnimation = null;
        processPendingInfoBars();
    }

    /**
     * Searches a given view's child views for an instance of {@link InfoBarContainer}.
     *
     * @param parentView View to be searched for
     * @return {@link InfoBarContainer} instance if it's one of the child views;
     *     otherwise {@code null}.
     */
    public static InfoBarContainer childViewOf(ViewGroup parentView) {
        for (int i = 0; i < parentView.getChildCount(); i++) {
            if (parentView.getChildAt(i) instanceof InfoBarContainer) {
                return (InfoBarContainer) parentView.getChildAt(i);
            }
        }
        return null;
    }

    public long getNative() {
        return mNativeInfoBarContainer;
    }

    private native long nativeInit(WebContents webContents, AutoLoginDelegate autoLoginDelegate);
    private native void nativeDestroy(long nativeInfoBarContainerAndroid);
}
