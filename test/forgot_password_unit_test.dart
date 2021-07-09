import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/app.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  Get.testMode = true;
  group(
    'Login controller check',
    () {
      var forgotPasswordController = Get.put(ForgotPasswordController());
      test(
        'Checking Variables in the ForgetPasswordController',
        () {
          ///Initialised
          var forgotPasswordController = Get.find<ForgotPasswordController>();

          ///Arrange
          final idTest = forgotPasswordController.userName;
          final idValidationCheck = forgotPasswordController.isIdValid;

          ///Assert
          expect(idTest, '');
          expect(idValidationCheck, false);
        },
      );
    },
  );

  group(
    'Checking static login details',
    () {
      var forgotPasswordController = Get.put(ForgotPasswordController());

      test(
        'Given a correct email for checking and expecting true',
        () {
          /// Intialised
          var forgotPasswordController = Get.find<ForgotPasswordController>();
          var idValue = 'r@gmail.com';

          /// Act
          forgotPasswordController.checkIfIdIsValid(idValue);
          final idValidationCheck = forgotPasswordController.isIdValid;

          /// Assert
          expect(idValidationCheck, true);
        },
      );
      test(
        '',
        () {
          /// Intialised
          var forgotPasswordController = Get.find<ForgotPasswordController>();
          var idEmpty = '';

          /// Act
          forgotPasswordController.checkIfIdIsValid(idEmpty);
          final idValidationCheck = forgotPasswordController.isIdValid;

          /// Assert
          expect(idValidationCheck, false);
        },
      );
    },
  );
}
