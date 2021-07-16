import 'package:get/get.dart';

import '../../app.dart';


/// A list of bindings which will be used in the route of [LoginView].
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
