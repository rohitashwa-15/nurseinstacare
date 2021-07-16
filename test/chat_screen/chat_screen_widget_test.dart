import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/app.dart';

void main() {
  testWidgets('Chats Screen Widget test', (tester) async {
    Get.testMode = true;
    TestWidgetsFlutterBinding.ensureInitialized();
    var chatScreenController = Get.put(ChatsController());
    BindingsBuilder<dynamic>(
      () {
        Get.lazyPut<ChatsController>(
          () => ChatsController(),
        );
      },
    );

    await tester.pumpWidget(
      const GetMaterialApp(
        home: ChatsView(),
      ),
    );

    /// Checking [ChatView] is there
    final chatsViewFinder = find.byType(ChatScreenWidget);
    expect(chatsViewFinder, findsOneWidget);

    final chatsFormField = find.byType(FormFieldWidget);
    expect(chatsFormField, findsWidgets);

    final customNavigationWidget = find.byType(CustomNavigationBar);
    expect(customNavigationWidget, findsWidgets);

    final chatsTextFormField = find.byType(TextFormField);
    expect(chatsTextFormField, findsWidgets);

 
  });
}
