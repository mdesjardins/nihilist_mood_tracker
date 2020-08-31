
import 'package:flutter/material.dart';
import 'ui/splash_route.dart';
import 'theme/dark.dart';
import 'services/notifications.dart';
import 'service_locator.dart';

Future<void> main() async {
  setupServiceLocator();

  WidgetsFlutterBinding.ensureInitialized();

  NotificationsService _notificationsService = locator<NotificationsService>();
  _notificationsService.initialize();

  runApp(NihilistMoodTrackerApp());
}

class NihilistMoodTrackerApp extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: darkTheme,
      home: SplashRoute(),
    );
  }
}

