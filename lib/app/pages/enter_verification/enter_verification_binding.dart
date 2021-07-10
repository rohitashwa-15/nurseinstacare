import 'package:get/get.dart';

import '../../app.dart';

class EnterVerificationBinding extends Bindings {
  @override
  void dependencies() {
  Get.lazyPut<EnterVerificationController>(
      () => EnterVerificationController(
   
      ),
    );
  }
}