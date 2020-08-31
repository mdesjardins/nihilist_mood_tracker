import 'services/notifications.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

// Sure, let's use dependency injection on this silly little project. Why not?
//
setupServiceLocator() {
  locator.registerLazySingleton<NotificationsService>(() => NotificationsServiceImpl());
}