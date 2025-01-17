// Copyright 2012 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package org.chromium.net;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.telephony.TelephonyManager;
import android.test.InstrumentationTestCase;
import android.test.UiThreadTest;
import android.test.suitebuilder.annotation.MediumTest;

import org.chromium.base.ApplicationState;
import org.chromium.base.test.util.Feature;
import org.chromium.net.NetworkChangeNotifierAutoDetect.NetworkState;

/**
 * Tests for org.chromium.net.NetworkChangeNotifier.
 */
public class NetworkChangeNotifierTest extends InstrumentationTestCase {
    /**
     * Listens for alerts fired by the NetworkChangeNotifier when network status changes.
     */
    private static class NetworkChangeNotifierTestObserver
            implements NetworkChangeNotifier.ConnectionTypeObserver {
        private boolean mReceivedNotification = false;

        @Override
        public void onConnectionTypeChanged(int connectionType) {
            mReceivedNotification = true;
        }

        public boolean hasReceivedNotification() {
            return mReceivedNotification;
        }

        public void resetHasReceivedNotification() {
            mReceivedNotification = false;
        }
    }

    /**
     * Mocks out calls to the ConnectivityManager.
     */
    class MockConnectivityManagerDelegate
            extends NetworkChangeNotifierAutoDetect.ConnectivityManagerDelegate {
        private boolean mActiveNetworkExists;
        private int mNetworkType;
        private int mNetworkSubtype;

        @Override
        NetworkState getNetworkState() {
            return new NetworkState(mActiveNetworkExists, mNetworkType, mNetworkSubtype);
        }

        void setActiveNetworkExists(boolean networkExists) {
            mActiveNetworkExists = networkExists;
        }

        void setNetworkType(int networkType) {
            mNetworkType = networkType;
        }

        void setNetworkSubtype(int networkSubtype) {
            mNetworkSubtype = networkSubtype;
        }
    }

    /**
     * Mocks out calls to the WifiManager.
     */
    class MockWifiManagerDelegate
            extends NetworkChangeNotifierAutoDetect.WifiManagerDelegate {
        private String mWifiSSID;

        @Override
        String getWifiSSID() {
            return mWifiSSID;
        }

        void setWifiSSID(String wifiSSID) {
            mWifiSSID = wifiSSID;
        }
    }

    /**
     * Tests that when Chrome gets an intent indicating a change in network connectivity, it sends a
     * notification to Java observers.
     */
    @UiThreadTest
    @MediumTest
    @Feature({"Android-AppBase"})
    public void testNetworkChangeNotifierJavaObservers() throws InterruptedException {
        // Create a new notifier that doesn't have a native-side counterpart.
        Context context = getInstrumentation().getTargetContext();
        NetworkChangeNotifier.resetInstanceForTests(context);

        NetworkChangeNotifier.setAutoDetectConnectivityState(true);
        NetworkChangeNotifierAutoDetect receiver = NetworkChangeNotifier.getAutoDetectorForTest();
        assertTrue(receiver != null);

        MockConnectivityManagerDelegate connectivityDelegate =
                new MockConnectivityManagerDelegate();
        connectivityDelegate.setActiveNetworkExists(true);
        connectivityDelegate.setNetworkType(NetworkChangeNotifier.CONNECTION_UNKNOWN);
        connectivityDelegate.setNetworkSubtype(TelephonyManager.NETWORK_TYPE_UNKNOWN);
        receiver.setConnectivityManagerDelegateForTests(connectivityDelegate);

        MockWifiManagerDelegate wifiDelegate = new MockWifiManagerDelegate();
        wifiDelegate.setWifiSSID("foo");
        receiver.setWifiManagerDelegateForTests(wifiDelegate);

        // Initialize the NetworkChangeNotifier with a connection.
        Intent connectivityIntent = new Intent(ConnectivityManager.CONNECTIVITY_ACTION);
        receiver.onReceive(getInstrumentation().getTargetContext(), connectivityIntent);

        // We shouldn't be re-notified if the connection hasn't actually changed.
        NetworkChangeNotifierTestObserver observer = new NetworkChangeNotifierTestObserver();
        NetworkChangeNotifier.addConnectionTypeObserver(observer);
        receiver.onReceive(getInstrumentation().getTargetContext(), connectivityIntent);
        assertFalse(observer.hasReceivedNotification());

        // We shouldn't be notified if we're connected to non-Wifi and the Wifi SSID changes.
        wifiDelegate.setWifiSSID("bar");
        receiver.onReceive(getInstrumentation().getTargetContext(), connectivityIntent);
        assertFalse(observer.hasReceivedNotification());
        // We should be notified when we change to Wifi.
        connectivityDelegate.setNetworkType(ConnectivityManager.TYPE_WIFI);
        receiver.onReceive(getInstrumentation().getTargetContext(), connectivityIntent);
        assertTrue(observer.hasReceivedNotification());
        observer.resetHasReceivedNotification();
        // We should be notified when the Wifi SSID changes.
        wifiDelegate.setWifiSSID("foo");
        receiver.onReceive(getInstrumentation().getTargetContext(), connectivityIntent);
        assertTrue(observer.hasReceivedNotification());
        observer.resetHasReceivedNotification();
        // We shouldn't be re-notified if the Wifi SSID hasn't actually changed.
        receiver.onReceive(getInstrumentation().getTargetContext(), connectivityIntent);
        assertFalse(observer.hasReceivedNotification());

        // Mimic that connectivity has been lost and ensure that Chrome notifies our observer.
        connectivityDelegate.setActiveNetworkExists(false);
        connectivityDelegate.setNetworkType(NetworkChangeNotifier.CONNECTION_NONE);
        Intent noConnectivityIntent = new Intent(ConnectivityManager.CONNECTIVITY_ACTION);
        receiver.onReceive(getInstrumentation().getTargetContext(), noConnectivityIntent);
        assertTrue(observer.hasReceivedNotification());

        observer.resetHasReceivedNotification();
        // Pretend we got moved to the background.
        receiver.onApplicationStateChange(ApplicationState.HAS_PAUSED_ACTIVITIES);
        // Change the state.
        connectivityDelegate.setActiveNetworkExists(true);
        connectivityDelegate.setNetworkType(NetworkChangeNotifier.CONNECTION_WIFI);
        // The NetworkChangeNotifierAutoDetect doesn't receive any notification while we are in the
        // background, but when we get back to the foreground the state changed should be detected
        // and a notification sent.
        receiver.onApplicationStateChange(ApplicationState.HAS_RUNNING_ACTIVITIES);
        assertTrue(observer.hasReceivedNotification());
    }
}
