import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/app.dart';

void main() {
  testWidgets('Preferences Widget test', (tester) async {
    Get.testMode = true;
    TestWidgetsFlutterBinding.ensureInitialized();
    var preferencesController = Get.put(PreferencesController());
    BindingsBuilder<dynamic>(
      () {
        Get.lazyPut<PreferencesController>(
          () => PreferencesController(),
        );
      },
    );

    await tester.pumpWidget(
      const GetMaterialApp(
        home: PreferencesView(),
      ),
    );

    /// Checking [PreferencesView] is there using Key
    final preferencesViewFinder = find.byKey(
      const Key('preferences-view'),
    );
    expect(preferencesViewFinder, findsOneWidget);

    final blueDotWidget = find.byType(BlueDotWidget);
    expect(blueDotWidget, findsWidgets);

    final searchTextFormField = find.byType(TextFormField);
    expect(searchTextFormField, findsWidgets);


    await tester.pumpAndSettle(
      const Duration(
        seconds: 5,
      ),
    );
  });
}
