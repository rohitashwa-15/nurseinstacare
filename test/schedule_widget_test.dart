
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nurseinstacare/app/app.dart';

void main() {
  testWidgets('Schedule Widget test', (tester) async {
   

   
    final checkboxWidget = find.byKey(
      const Key('checkbox-widget'),
    );

     await tester.pumpWidget(
       ScheduleWidget(timings: '07-20', title: 'Night'),
    );

  //  await tester.tap(checkboxWidget);



 expect(find.byType(ScheduleWidget), findsWidgets);
  //  expect(checkboxWidget, findsOneWidget); 
 
  });
}
