import 'package:get/get.dart';

import '../../app.dart';

class EditPhoneNoController extends GetxController {


  /// Enable or disable the submit  [phno].
  bool enableButton() {
    if (isPhNoValid == true) {
      return true;
    } else {
      return false;
    }
  }

   /// Submit the Ph No details by [phno].
  void submitPhNoDetails() async {
   RouteManagement.goToEnterVerification;
  }

 /// Is true when ID valid
  bool isPhNoValid = false;

    void checkIfPhNoIsValid(String value) {
    if (value.length==10) {
      isPhNoValid = true;
    } else {
      isPhNoValid = false;
    }
  }
  }
