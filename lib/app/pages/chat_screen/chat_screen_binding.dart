import 'package:get/get.dart';

import '../../app.dart';

class ChatsBinding extends Bindings {
  @override
  void dependencies() {
  Get.lazyPut< ChatsController>(
      () =>  ChatsController(
   
      ),
    );
  }
}