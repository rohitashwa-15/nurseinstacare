// coverage:ignore-file
/// A constants such as API keys, urls, etc. used in the data layer.
///
/// Will be ignored for test since all are static values and would not change.
abstract class DataConstants {
  static const String defaultLang = 'en';
  static const String baseUrl = 'https://ccapp.foretees.com/v5/servlet';
  static const String loginUrl =
      'https://caddybeta.foretees.com/demoapp/app_api/login.php';
  static const String getUserDetailUrl =
      'https://caddybeta.foretees.com/demoapp/app_api/getuser.php';
  static const String editProfileUrl =
      'https://caddybeta.foretees.com/demoapp/website/caddieprofile.php?token=';
  static const String scheduleUrl =
      'https://caddybeta.foretees.com/demoapp/website/profile.php?token=';
  static const String historyUrl =
      'https://caddybeta.foretees.com/demoapp/website/caddiehistory.php?token=';
  static const String rulesUrl =
      'https://caddybeta.foretees.com/demoapp/website/rules.php?token=';
  static const String contactUrl =
      'https://caddybeta.foretees.com/demoapp/website/contactus.php?token=';

  static const String feedPageUrl =
      'https://caddybeta.foretees.com/demoapp/app_api/getnotification.php';
  static const String getUserNamePass =
      'https://www.foretees.com/how-to-login-to-ft-caddie-app/';
}
