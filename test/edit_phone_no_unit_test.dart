import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/app.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  Get.testMode = true;
  group(
    'Login controller check',
    () {
      var editPhoneNoController = Get.put(EditPhoneNoController());
      test(
        'Checking Variables in the ForgetPasswordController',
        () {
          ///Initialised
          var editPhoneNoController = Get.find<EditPhoneNoController>();

          ///Arrange
          //final idTest = editPhoneNoController.userName;
          final idValidationCheck = editPhoneNoController.isPhNoValid;

          ///Assert
         // expect(idTest, '');
          expect(idValidationCheck, false);
        },
      );
    },
  );
}
