import 'package:mobx/mobx.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

part 'notifications_store.g.dart';

class NotificationsStore = _NotificationsStoreBase with _$NotificationsStore;

abstract class _NotificationsStoreBase with Store {
  OneSignal instance;
  _NotificationsStoreBase() {
    init();
  }

  Future init() async {
    instance = OneSignal.shared;

    bool requiresConsent = await OneSignal.shared.requiresUserPrivacyConsent();

    OneSignal.shared.setLogLevel(OSLogLevel.debug, OSLogLevel.debug);

    OneSignal.shared.init("eda37fc8-cbdd-41d7-b87e-9669dcb8897a", iOSSettings: {
      OSiOSSettings.autoPrompt: true,
      OSiOSSettings.inAppLaunchUrl: true
    });

    instance.setNotificationOpenedHandler(_handleNotificationOpened);

    instance.setInFocusDisplayType(OSNotificationDisplayType.notification);

    // The promptForPushNotificationsWithUserResponse function will show the iOS push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
    await OneSignal.shared
        .promptUserForPushNotificationPermission(fallbackToSettings: true);

    instance.setNotificationReceivedHandler(saveNotification);

    OneSignal.shared
        .setNotificationOpenedHandler((OSNotificationOpenedResult result) {
      // will be called whenever a notification is opened/button pressed.
    });

    OneSignal.shared.setPermissionObserver((OSPermissionStateChanges changes) {
      // will be called whenever the permission changes
      // (ie. user taps Allow on the permission prompt in iOS)
    });

    OneSignal.shared
        .setSubscriptionObserver((OSSubscriptionStateChanges changes) {
      // will be called whenever the subscription changes
      //(ie. user gets registered with OneSignal and gets a user ID)
    });

    OneSignal.shared.setEmailSubscriptionObserver(
        (OSEmailSubscriptionStateChanges emailChanges) {
      // will be called whenever then user's email subscription changes
      // (ie. OneSignal.setEmail(email) is called and the user gets registered
    });
  }

  void saveNotification(OSNotification notification) async {
    print(notification.payload);
  }

  @action
  void _handleNotificationOpened(OSNotificationOpenedResult result) {
    print(result.notification);
  }
}
