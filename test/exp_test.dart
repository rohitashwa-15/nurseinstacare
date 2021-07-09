import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/pages/exp.dart';
import 'package:nurseinstacare/app/pages/login/login.dart';

void main() {
  testWidgets('Exp Widget test', (tester) async {
    Get.testMode = true;
    TestWidgetsFlutterBinding.ensureInitialized();
    
    await tester.pumpWidget(
      const GetMaterialApp(
        home: Exp(),
      ),
    );
  });
}
