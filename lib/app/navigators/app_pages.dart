import 'package:get/get.dart';
import '../app.dart';
part 'app_routes.dart';

/// Contains the list of pages or routes taken across the whole application.
/// This will prevent us in using context for navigation. And also providing
/// the blocs required in the next named routes.
///
/// [pages] : will contain all the pages in the application as a route
/// and will be used in the material app.
/// Will be ignored for test since all are static values and would not change.

// coverage:ignore-file
class AppPages {
  static const initial = Routes.bookingID;
  static var transitionDuration = const Duration(
    milliseconds: 550,
  );
  static final pages = [
    GetPage<LoginView>(
      name: _Paths.loginScreen,
      page: () => const LoginView(),
      transitionDuration: transitionDuration,
      binding: LoginBinding(),
      transition: Transition.native,
    ),
    GetPage<ForgotPasswordView>(
      name: _Paths.forgotPasswordScreen,
      page: () => const ForgotPasswordView(),
      transitionDuration: transitionDuration,
      binding: ForgotPasswordBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<ChangePasswordView>(
      name: _Paths.changePasswordScreen,
      transitionDuration: transitionDuration,
      page: () => const ChangePasswordView(),
      binding: ChangePasswordBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<ProfileView>(
      name: _Paths.profileScreen,
      transitionDuration: transitionDuration,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<ChatsView>(
      name: _Paths.chatScreen,
      page: () => const ChatsView(),
      transitionDuration: transitionDuration,
      binding: ChatsBinding(),
      transition: Transition.native,
    ),
    GetPage<EditPhoneNoView>(
      name: _Paths.editPhoneScreen,
      page: () => EditPhoneNoView(),
      transitionDuration: transitionDuration,
      binding: EditPhoneNoBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<EnterVerificationView>(
      name: _Paths.enterVerificationScreen,
      page: () => const EnterVerificationView(),
      transitionDuration: transitionDuration,
      binding: EnterVerificationBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<SettingsView>(
      name: _Paths.settingsScreen,
      page: () => SettingsView(),
      transitionDuration: transitionDuration,
      binding: SettingsBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<NotificationsView>(
      name: _Paths.notificationsScreen,
      transitionDuration: transitionDuration,
      page: () => const NotificationsView(),
      binding: NotificationsBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<HelpView>(
      name: _Paths.helpScreen,
      transitionDuration: transitionDuration,
      page: () => HelpView(),
      binding: HelpBinding(),
      transition: Transition.fadeIn,
    ),
    /* GetPage<FaqsView>(
      name: _Paths.faqsScreen,
      transitionDuration: transitionDuration,
      page: () => FaqsView(),
      binding: FaqsBinding(),
      transition: Transition.fadeIn,
    ),*/
    GetPage<WeekScheduleView>(
      name: _Paths.weekScheduleScreen,
      transitionDuration: transitionDuration,
      page: () => WeekScheduleView(),
      binding: WeekScheduleBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<PreferencesView>(
      name: _Paths.preferenceScreen,
      transitionDuration: transitionDuration,
      page: () => const PreferencesView(),
      binding: PreferencesBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<PatientsView>(
      name: _Paths.patientsScreen,
      transitionDuration: transitionDuration,
      page: () => const PatientsView(),
      binding: PatientsBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<BookingIDView>(
      name: _Paths.bookingID,
      transitionDuration: transitionDuration,
      page: () => BookingIDView(),
      binding: BookingIDBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
