

import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/app.dart';

void main() {
  testWidgets('Patients Widget test', (tester) async {
    Get.testMode = true;
  TestWidgetsFlutterBinding.ensureInitialized();

  await tester.pumpWidget(
      const GetMaterialApp(
        home: PatientsView(),
      ),
    );
  });

  
}