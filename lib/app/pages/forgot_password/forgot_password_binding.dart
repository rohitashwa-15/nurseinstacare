import 'package:get/get.dart';

import '../../app.dart';

class ForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
  Get.lazyPut<ForgotPasswordController>(
      () => ForgotPasswordController(
   
      ),
    );
  }
}
