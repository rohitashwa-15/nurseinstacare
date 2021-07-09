import 'package:get/get.dart';

import '../../app.dart';

class FaqsBinding extends Bindings {
 @override
  void dependencies() {
    Get.lazyPut<FaqsController>(
      () => FaqsController(
   
      ),
    );
  }
}