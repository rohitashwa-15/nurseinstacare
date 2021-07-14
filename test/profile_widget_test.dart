import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/app.dart';

void main() {
  testWidgets('Profile Widget test', (tester) async {
    Get.testMode = true;
    TestWidgetsFlutterBinding.ensureInitialized();
    var profileController = Get.put(ProfileController());
    BindingsBuilder<dynamic>(
      () {
        Get.lazyPut<ProfileController>(
          () => ProfileController(

          ),
        );
      },
    );

  await tester.pumpWidget(
       const GetMaterialApp(
        home: ProfileView(),
      ),
    );

/// Checking [ProfileView] is there using Key
    final profileViewFinder = find.byKey( const Key('profile-view'),);
    expect(profileViewFinder, findsOneWidget);

    final listTileWidget = find.byType(ListTileWidget);
    expect(listTileWidget, findsWidgets);

    final containerWidget = find.byType(Container);
    expect(containerWidget, findsWidgets);
   
 final navigationWidget = find.byType(CustomNavigationBar);
    expect(navigationWidget, findsWidgets);

    await tester.pumpAndSettle(
      const Duration(
        seconds: 5,
      ),
    );
  });
}
