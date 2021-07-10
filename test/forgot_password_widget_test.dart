import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/app.dart';

void main() {
  testWidgets('Forgot Password Widget test', (tester) async {
    Get.testMode = true;
    TestWidgetsFlutterBinding.ensureInitialized();
    var forgotPasswordController = Get.put(ForgotPasswordController());
    BindingsBuilder<dynamic>(
      () {
        Get.lazyPut< ForgotPasswordController>(
          () => ForgotPasswordController(

          ),
        );
      },
    );

  await tester.pumpWidget(
      const GetMaterialApp(
        home: ForgotPasswordView(),
      ),
    );

/// Checking [ForgotPasswordView] is there using Key
    final forgotPasswordViewFinder = find.byKey(const Key('forgot-password-view'));
    expect(forgotPasswordViewFinder, findsOneWidget);

    final formFieldWidget = find.byType(FormFieldWidget);
    expect(formFieldWidget, findsWidgets);

    final forgotPasswordTextFormField = find.byType(TextFormField);
    expect(forgotPasswordTextFormField, findsWidgets);

    await tester.pumpAndSettle(
      const Duration(
        seconds: 5,
      ),
    );
  });
}
