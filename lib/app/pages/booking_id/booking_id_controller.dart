import 'package:get/get.dart';
import '../../app.dart';

/// A controller for the [BookingIDView], to update the UI
class BookingIDController extends GetxController {

 var tabIndex = 1;
   void updateUiForCurrentTab(int index) {
    tabIndex = index;
    update();
  }

}
