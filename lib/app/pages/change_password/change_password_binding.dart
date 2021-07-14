import 'package:get/get.dart';

import '../../app.dart';

class ChangePasswordBinding extends Bindings {
  @override
  void dependencies() {
  Get.lazyPut<ChangePasswordController>(
      () => ChangePasswordController(
   
      ),
    );
  }
}