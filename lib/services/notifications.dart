//
// Service that provides local push notifications.
//
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
NotificationAppLaunchDetails notificationAppLaunchDetails;

abstract class NotificationsService {
  void requestPermissions();
  void initialize();
}

class NotificationsServiceMock extends NotificationsService {
  void requestPermissions() {}
  void initialize() {}
}

class NotificationsServiceImpl extends NotificationsService {
  void requestPermissions() {}

  // Initializes the notifications system from main().
  void initialize() async {
    // needed if you intend to initialize in the `main` function

    notificationAppLaunchDetails =
        await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();

    var initializationSettingsAndroid = AndroidInitializationSettings('ic_launcher_foreground');
    // Note: permissions aren't requested here... that can be done later using the
    // requestPermissions() method of the IOSFlutterLocalNotificationsPlugin class
    var initializationSettingsIOS = IOSInitializationSettings(
        requestAlertPermission: false,
        requestBadgePermission: false,
        requestSoundPermission: false,
        onDidReceiveLocalNotification:
            (int id, String title, String body, String payload) async {

//        didReceiveLocalNotificationSubject.add(ReceivedNotification(
//            id: id, title: title, body: body, payload: payload));

        });
    var initializationSettings = InitializationSettings(
        initializationSettingsAndroid, initializationSettingsIOS);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: (String payload) async {
          if (payload != null) {
//            debugPrint('notification payload: ' + payload);
          }
//        selectNotificationSubject.add(payload);
        });

  }
}