import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:nurseinstacare/app/app.dart';

void main() {
  testWidgets('Edit Phone No Widget test', (tester) async {
    Get.testMode = true;
    TestWidgetsFlutterBinding.ensureInitialized();
    var enterVerificationController = Get.put(EnterVerificationController());
    BindingsBuilder<dynamic>(
      () {
        Get.lazyPut<EnterVerificationController>(
          () => EnterVerificationController(

          ),
        );
      },
    );

  await tester.pumpWidget(
       const GetMaterialApp(
        home:  EnterVerificationView(),
      ),
    );

/// Checking [LoginView] is there using Key
    final  enterVerificationViewFinder = find.byKey(const Key('enter-verification-view'));
    expect(enterVerificationViewFinder, findsOneWidget);

    final boxWidget = find.byType(BoxWidget);
    expect(boxWidget, findsWidgets);

    final editPhoneNoButton = find.byType(ButtonWidget);
    expect(editPhoneNoButton, findsOneWidget);

    await tester.pumpAndSettle(
      const Duration(
        seconds: 5,
      ),
    );
  });
}
