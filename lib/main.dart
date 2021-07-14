import 'package:feature_discovery/feature_discovery.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/domain/usecases/auth_usecases.dart';
import 'data/data.dart';
import 'app/app.dart';
import 'app/navigators/app_pages.dart';
import 'app/utils/strings/string_constants.dart';

Future<void> main() async {
  runApp(MyApp());
 // await initServices();
}

/// Initialize the services before the app starts.
Future<void> initServices() async {
  Get.put(AuthUseCases());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    
    return  GetMaterialApp(
              locale: const Locale('en'),
              title: StringConstants.appName,
              debugShowCheckedModeBanner: false,
                fallbackLocale: const Locale(
        DataConstants.defaultLang,
      ),
              themeMode: ThemeMode.system,
              getPages: AppPages.pages,
              translations: TranslationsFile(),
              initialRoute: AppPages.initial,
              enableLog: true,
            );
  }
}
