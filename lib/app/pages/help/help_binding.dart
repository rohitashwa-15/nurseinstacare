import 'package:get/get.dart';

import '../../app.dart';

class HelpBinding extends Bindings {
 @override
  void dependencies() {
    Get.lazyPut<HelpController>(
      () => HelpController(
   
      ),
    );
  }
}