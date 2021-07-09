part of 'app_pages.dart';

/// A chunks of routes and the path names which will be used to create
/// routes in [AppPages].
/// Will be ignored for test since all are static values and would not change.

// coverage:ignore-file
abstract class Routes {
  static const loginScreen = _Paths.loginScreen;
  static const forgotPasswordScreen = _Paths.forgotPasswordScreen;
  static const settingsScreen = _Paths.settingsScreen;
  static const notificationsScreen = _Paths.notificationsScreen;
  static const helpScreen = _Paths.helpScreen;
  static const faqsScreen = _Paths.faqsScreen;
  static const weekScheduleScreen = _Paths.weekScheduleScreen;
  static const preferenceScreen = _Paths.preferenceScreen;
  static const patientsScreen = _Paths.patientsScreen;
}

abstract class _Paths {
  static const loginScreen = '/login-screen';
  static const forgotPasswordScreen = '/forgot-password';
  static const settingsScreen = '/settings-screen';
  static const notificationsScreen = '/notifications-screen';
  static const helpScreen = '/help-screen';
  static const faqsScreen = '/faqs-screen';
  static const weekScheduleScreen = '/weekschedule-screen';
  static const preferenceScreen = '/preferences-screen';
  static const patientsScreen = '/patients-screen';
}