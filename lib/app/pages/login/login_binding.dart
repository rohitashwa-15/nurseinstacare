import 'package:get/get.dart';

import '../../app.dart';

class LoginBinding extends Bindings {
 @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(
   Get.put(LoginPresenter())
      ),
    );
  }
}
