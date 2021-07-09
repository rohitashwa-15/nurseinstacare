import 'package:email_validator/email_validator.dart';
import 'package:get/get.dart';
import '../../app.dart';

/// A controller for the [LoginView], to update the UI
class LoginController extends GetxController {
  LoginController(this._loginPresenter);

  final LoginPresenter _loginPresenter;

  /// name of the user
  String userName = '';

  /// Is true when ID valid
  bool isIdValid = false;


  /// checking empty field validation for [userName]
  void checkIfIdIsValid(String value) {
    if (EmailValidator.validate(value)) {
      userName = value;
      isIdValid = true;
    } else {
      isIdValid = false;
    }
  }

  /// Enable or disable the submit based on [userName] and [password].
  bool enableButton() {
    if (isIdValid == true && isPasswordValid == true) {
      return true;
    } else {
      return false;
    }
  }

  /// Is password visible
  bool isPasswordVisible = false;

  /// Password of the user.
  String password = '';

  /// Is true when ID valid
  bool isPasswordValid = false;

  // coverage:ignore-start

  /// Submit the login details and authenticate the user by [userName] and [password].
  void submitLogin() async {
    RouteManagement.goToForgotPasswprd;
  }
  // coverage:ignore-end

  /// checking empty field validation for password
  void checkIfPasswordIsValid(String value) {
    if (value.isNotEmpty) {
      password = value;
      isPasswordValid = true;
    } else {
      isPasswordValid = false;
    }
    update();
  }

  /// Update the [isPasswordVisible] to show the password or not.
  void updatePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    update();
  }
}
