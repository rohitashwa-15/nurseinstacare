import 'package:email_validator/email_validator.dart';
import 'package:get/get.dart';
import '../../app.dart';
 
/// A controller for the [ForgotPasswordView], to update the UI
class ForgotPasswordController extends GetxController {

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
}
