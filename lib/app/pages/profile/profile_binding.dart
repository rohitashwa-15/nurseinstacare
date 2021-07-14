import 'package:get/get.dart';

import '../../app.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
  Get.lazyPut<ProfileController>(
      () => ProfileController(
   
      ),
    );
  }
}