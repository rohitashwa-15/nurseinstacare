import 'package:get/get.dart';

import '../../app.dart';

/// A list of bindings which will be used in the route of [PreferencesView].
class PreferencesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut< PreferencesController>(
      () =>  PreferencesController(
   
      ),
    );
  }
}
