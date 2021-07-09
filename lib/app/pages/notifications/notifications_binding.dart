import 'package:get/get.dart';

import '../../app.dart';

class NotificationsBinding extends Bindings {
 @override
  void dependencies() {
    Get.lazyPut<NotificationsController>(
      () => NotificationsController(
   
      ),
    );
  }
}
