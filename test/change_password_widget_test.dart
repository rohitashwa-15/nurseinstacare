import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/app.dart';

void main() {
  testWidgets('Change Password Widget test', (tester) async {
    Get.testMode = true;
    TestWidgetsFlutterBinding.ensureInitialized();
    var changePasswordController = Get.put(ChangePasswordController());
    BindingsBuilder<dynamic>(
      () {
        Get.lazyPut<ChangePasswordController>(
          () => ChangePasswordController(

          ),
        );
      },
    );

  await tester.pumpWidget(
       const GetMaterialApp(
        home: ChangePasswordView(),
      ),
    );

/// Checking [ChangePasswordView] is there using Key
    final changePasswordViewFinder = find.byKey( const Key('change-password-view'),);
    expect(changePasswordViewFinder, findsOneWidget);

     final changePasswordFormField = find.byType(FormFieldWidget);
    expect(changePasswordFormField, findsWidgets);

    final changePasswordTextFormField = find.byType(TextFormField);
    expect(changePasswordTextFormField, findsWidgets);

    final changePasswordButton = find.byType(ButtonWidget);
    expect(changePasswordButton, findsWidgets);

    await tester.pumpAndSettle(
      const Duration(
        seconds: 5,
      ),
    );
  });
}
