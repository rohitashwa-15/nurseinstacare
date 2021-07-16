import 'package:get/get.dart';
import '../../app.dart';

/// A list of bindings which will be used in the route of [ForgotPasswordView].
class ForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
  Get.lazyPut<ForgotPasswordController>(
      () => ForgotPasswordController(
   
      ),
    );
  }
}
