import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/app.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  Get.testMode = true;
  group(
    'Login controller check',
    () {
      Get.put(LoginController(Get.put(LoginPresenter())));
      test(
        'Checking Variables in the LoginController',
        () {
          ///Initialised
          var loginController = Get.find<LoginController>();

          ///Arrange
          final idTest = loginController.userName;
          final idValidationCheck = loginController.isIdValid;

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
       Get.put(LoginController(Get.put(LoginPresenter())));

      test(
        'Given a correct email for checking and expecting true',
        () {
          /// Intialised
          var loginController = Get.find<LoginController>();
          var idValue = 'r@gmail.com';

          /// Act
          loginController.checkIfIdIsValid(idValue);
          final idValidationCheck = loginController.isIdValid;

          /// Assert
          expect(idValidationCheck, true);
        },
      );
      test(
        '',
        () {
          /// Intialised
          var loginController = Get.find<LoginController>();
          var idEmpty = '';

          /// Act
          loginController.checkIfIdIsValid(idEmpty);
          final idValidationCheck = loginController.isIdValid;

          /// Assert
          expect(idValidationCheck, false);
        },
      );
    },
  );
}
