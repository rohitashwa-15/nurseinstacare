import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/app.dart';

void main() {
  testWidgets('Week Schedule test', (tester) async {
   
    await tester.pumpWidget(
      ScreenUtilInit(
        builder: () => GetMaterialApp(
          home: WeekScheduleView(),
        ),
      ),
    );


  });
}
