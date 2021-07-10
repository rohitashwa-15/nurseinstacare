import 'package:get/get.dart';

import '../../app.dart';

class EditPhoneNoBinding extends Bindings {
  @override
  void dependencies() {
  Get.lazyPut<EditPhoneNoController>(
      () => EditPhoneNoController(
   
      ),
    );
  }
}