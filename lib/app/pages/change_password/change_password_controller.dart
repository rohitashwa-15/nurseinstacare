import 'package:get/get.dart';
import '../../app.dart';


/// A controller for the [ChangePasswordView], to update the UI
class ChangePasswordController extends GetxController{


  /// Is password visible
  bool isPasswordVisible = false;

  /// Password of the user.
  String password = '';

  /// Is true when ID valid
  bool isPasswordValid = false;



  /// Enable or disable the submit  [password].
  bool enableButton() {
    if (isPasswordValid == true) {
      return true;
    } else {
      return false;
    }
  }

   /// Submit the change password details and authenticate the user by [password].
  void submitChangePasswordDetails() async {
    //RouteManagement.goToForgotPassword;
  }

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