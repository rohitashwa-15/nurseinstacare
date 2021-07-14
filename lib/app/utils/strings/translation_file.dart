// coverage:ignore-file
import 'package:get/get.dart';

/// The main translation file which will help
/// in localization of the application
///
/// [keys] : Contains all the language code which will be
/// used in the application
///
/// For more details on how to implement localization
/// can go to [GetX Internationalization](https://pub.dev/packages/get#internationalization)
/// and read there documentation.
///
/// Will be ignored for test since all are static values and would not change.
class TranslationsFile extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'amsterdam': 'Amsterdam',
          'enterDetails': 'Enter Details',
          'phone': ' Phone ',
          'resetLink':
              'Please enter registered email to get password \nReset link.',
          'morning': 'Morning',
          'afternoon': 'Afternoon',
          'evening': 'Evening',
          'night': 'Night',
          'shift': 'Shift',
          'repeat': 'Repeat',
          'enable':
              'Enable this if you want to repeat \nthe same schedule  across multiple days',
          'repeatOn': 'Repeat On',
          'repeatEvery': 'Repeat Every',
          'everMon': 'Every Monday',
          'markasAvailable': 'MARK AS AVAILABLE',
          'preferences': 'PREFERENCES',
          'howWouldOperate': 'How would you like to operate ?*',
          'preferredZones': 'Preferred Zones',
          'radius': 'Radius',
          'selectPreferredZones': 'Select Preferred zones ',
          'search': 'Search',
          'patientTypes': 'Patient Types',
          'password': 'password',
          'forgotPassword': 'Forgot password ?',
          'entermailId': 'Enter Email ID ',
          'login': 'LOGIN',
          'orContinueWith': 'or Continue With',
          'resetPassword': 'RESET PASSWORD',
          'editPhoneNo': 'EDIT PHONE NUMBER',
          'phoneNo': 'Phone Number',
          'verify': 'VERIFY',
          'enter' : 'Enter',
          'enterVerificationCode' :'Enter Verification \nCode',
          'verificationCodeSendto' : 'Verification code has been send to',
          'notifications' : 'NOTIFICATIONS',
          'playSoundForNotifications' : 'Play sound for notifications',
          'playSoundForAlerts' : 'Play sound for alerts',
          'playSoundForMessages' : 'Play sound for messages',
          'appoinments':'APPOINMENTS',
          'patients':'PATIENTS',
          'chat':'CHAT',
          'profile':'Profile',
          'information' : 'Information',
          'my':'My',
          'settings' : 'Settings',
          'availability' : 'Availability',
          'changePassword' : 'CHANGE PASSWORD',
          'oldPassword' : 'Old Password',
          'newPassword' : 'New Password',
          'confirmPassword' : 'Confirm Password',
          'confirm' : 'CONFIRM',
          'chats' : 'CHATS',
        },
      };
}
