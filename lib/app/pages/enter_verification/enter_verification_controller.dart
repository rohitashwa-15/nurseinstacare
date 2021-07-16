import 'package:get/get.dart';
import '../../app.dart';

/// A controller for the [EnterVerificationView], to update the UI
class EnterVerificationController extends GetxController {
  bool num = false;

  /// checking empty field validation for password
  void checkIfVerificationIsValid(String value) {
    if (value.isNum) {
      num = true;
    } else {
      num = false;
    }
    update();
  }

  /// Enable or disable the submit  [phno].
  bool enableButton() {
    if (num == true) {
      return true;
    } else {
      return false;
    }
  }

  /// Submit the verification No details by [num].
  void submitVerificationDetails() async {
    RouteManagement.goToEnterVerification;
  }
}
