import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:nurseinstacare/app/app.dart';

void main() {
  testWidgets('Edit Phone No Widget test', (tester) async {
    Get.testMode = true;
    TestWidgetsFlutterBinding.ensureInitialized();
    var editPhoneNoController = Get.put(EditPhoneNoController());
    BindingsBuilder<dynamic>(
      () {
        Get.lazyPut<EditPhoneNoController>(
          () => EditPhoneNoController(

          ),
        );
      },
    );

  await tester.pumpWidget(
       GetMaterialApp(
        home: EditPhoneNoView(),
      ),
    );

/// Checking [LoginView] is there using Key
    final editPhoneNoViewFinder = find.byKey(const Key('edit-phone-no-view'));
    expect(editPhoneNoViewFinder, findsOneWidget);

    final formFieldWidget = find.byType(InternationalPhoneNumberInput);
    expect(formFieldWidget, findsWidgets);

    final editPhoneNoButton = find.byType(ButtonWidget);
    expect(editPhoneNoButton, findsWidgets);

    await tester.pumpAndSettle(
      const Duration(
        seconds: 5,
      ),
    );
  });
}
