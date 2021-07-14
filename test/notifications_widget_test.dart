import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/app.dart';

void main() {
  testWidgets('Notifications Widget test', (tester) async {
    Get.testMode = true;
    TestWidgetsFlutterBinding.ensureInitialized();
    var notificationsController = Get.put(NotificationsController());
    BindingsBuilder<dynamic>(
      () {
        Get.lazyPut<NotificationsController>(
          () => NotificationsController(

          ),
        );
      },
    );

  await tester.pumpWidget(
       const GetMaterialApp(
        home: NotificationsView(),
      ),
    );

/// Checking [NotificationsView] is there using Key
    final notificationsViewFinder = find.byKey( const Key('notifications-view'),);
    expect(notificationsViewFinder, findsOneWidget);

    final switchTileWidget = find.byType(SwitchTileWidget);
    expect(switchTileWidget, findsWidgets);

    await tester.pumpAndSettle(
      const Duration(
        seconds: 5,
      ),
    );
  });
}
