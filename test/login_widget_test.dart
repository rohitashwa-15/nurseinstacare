import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/app.dart';

void main() {
  testWidgets('Login Widget test', (tester) async {
    Get.testMode = true;
    TestWidgetsFlutterBinding.ensureInitialized();
    var loginController = Get.put(LoginController(Get.put(LoginPresenter())));
    BindingsBuilder<dynamic>(
      () {
        Get.lazyPut<LoginController>(
          () => LoginController(
            Get.find(),
          ),
        );
      },
    );

  await tester.pumpWidget(
      const GetMaterialApp(
        home: LoginView(),
      ),
    );

/// Checking [LoginView] is there using Key
    final loginViewFinder = find.byKey(const Key('login-view'));
    expect(loginViewFinder, findsOneWidget);

    /// Checking login options widget
    final loginWidgets = find.byType(LoginWidget);
    expect(loginWidgets, findsOneWidget);

    final loginFormField = find.byType(FormFieldWidget);
    expect(loginFormField, findsWidgets);

    final loginTextFormField = find.byType(TextFormField);
    expect(loginTextFormField, findsWidgets);


    await tester.pumpAndSettle(
      const Duration(
        seconds: 5,
      ),
    );
  });
}
