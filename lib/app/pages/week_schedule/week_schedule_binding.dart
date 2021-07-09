import 'package:get/get.dart';

import '../../app.dart';

class WeekScheduleBinding extends Bindings {
  @override
  void dependencies() {
  Get.lazyPut<WeeksScheduleController>(
      () => WeeksScheduleController(
   
      ),
    );
  }
}
