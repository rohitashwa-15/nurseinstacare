import 'package:get/get.dart';

import 'app_pages.dart';

/// A chunk of routes taken in the application.
/// Will be ignored for test since all are static values and would not change.

// coverage:ignore-file
abstract class RouteManagement {

 /// Go to the settings screen.
  static void goToLogin() {
    Get.offNamed<void>(
      Routes.loginScreen,
    );
  }

   /// Go to the forgot password screen.
  static void goToForgotPasswprd() {
    Get.offNamed<void>(
      Routes.forgotPasswordScreen,
    );
  }


  /// Go to the settings screen.
  static void goToSettings() {
    Get.offNamed<void>(
      Routes.settingsScreen,
    );
  }

  /// Go to the notifications screen.
  static void goToNotifications() {
    Get.offNamed<void>(
      Routes.notificationsScreen,
    );
  }

  /// Go to the help screen.
  static void goToHelp() {
    Get.offNamed<void>(
      Routes.helpScreen,
    );
  }


  /// Go to the faqs screen.
  static void goToFaqs() {
    Get.offNamed<void>(
      Routes.faqsScreen,
    );
  }

/// Go to the weekSchedule screen.
  static void goToSchedule() {
    Get.offNamed<void>(
      Routes.weekScheduleScreen,
    );
  }

  /// Go to the preferences screen.
  static void goToPreferences() {
    Get.offNamed<void>(
      Routes.preferenceScreen,
    );
  }

  /// Go to the patients screen.
  static void goToPatients() {
    Get.offNamed<void>(
      Routes.patientsScreen,
    );
  }
}
