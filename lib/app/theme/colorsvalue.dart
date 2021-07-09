import 'package:flutter/material.dart';

/// A chunks of colors used
/// in the application
/// Will be ignored for test since all are static values and would not change.
// coverage:ignore-file
abstract class ColorsValue {
  static const Map<int, Color> primaryColorSwatch = {
    50: Color.fromRGBO(199, 61, 93, .1),
    100: Color.fromRGBO(199, 61, 93, .2),
    200: Color.fromRGBO(199, 61, 93, .3),
    300: Color.fromRGBO(199, 61, 93, .4),
    400: Color.fromRGBO(199, 61, 93, .5),
    500: Color.fromRGBO(199, 61, 93, .6),
    600: Color.fromRGBO(199, 61, 93, .7),
    700: Color.fromRGBO(199, 61, 93, .8),
    800: Color.fromRGBO(199, 61, 93, .9),
    900: Color.fromRGBO(199, 61, 93, 1.0),
  };

  static const Color blueColorRgb = Color.fromRGBO(57, 23, 237, 1);

  static const Color primaryColorRgb = Colors.white;

  static const Color primaryColorLight1Rgbo = Color.fromRGBO(199, 61, 93, .1);

  static const Color primaryColor = Color(
    primaryColorHex,
  );

  static const Color facebookColor = Color(
    facebookColorHex,
  );

  static const Color orangeColor = Color(
    orangeColorHex,
  );

  static const Color greyColor = Color(
    greyColorHex,
  );

  static const Color lightGreyColor = Color(
    lightGreyColorHex,
  );

  static const Color lightGreyColor1 = Color(
    lightGreyColor1Hex,
  );

  static const Color lightGreyColor2 = Color(
    lightGreyColor2Hex,
  );

  static const Color lightGreyColor3 = Color(
    lightGreyColor3Hex,
  );

  static const Color lightGreyColor4 = Color(
    lightGreyColor4Hex,
  );

  static const Color lightGreyColor5 = Color(
    lightGreyColor5Hex,
  );

  static const Color titleGreyColor = Color(
    titleGreyColorHex,
  );

  static const Color blackColor = Color(
    blackColorHex,
  );

  static const Color selectedColor = Color(
    selectedPageColor,
  );

  static const Color nonSelectedColor = Color(
    nonSelectedPageColor,
  );

  static const Color textFieldColor = Color(
    formFieldColor,
  );

  static const Color hintColor = Color(
    fieldHintColor,
  );

  static const Color accountColor = Color(
    createAccountColor,
  );

  static const Color otpColor = Color(
    otpFieldColor,
  );

  static const Color outlineBorder = Color(
    outLineColorOfProductUsed,
  );

  static const Color gradient1Color = Color(
    gradient1Hex,
  );

  static const Color gradient2Color = Color(
    primaryColorHex,
  );

  static const Color profileColor = Color(
    profileHex,
  );

  static const Color successColor = Color(
    greenHex,
  );

  static const Color helpColor = Color(
    helpColorHex,
  );

  static const Color progressColor = Color(
    progressColorHex,
  );

  static const Color homeTabBarColor = Color(
    homeTabBarHex,
  );

  static const Color homeTabBarProgressColor = Color(
    homeTabBarProgressHex,
  );

  static Color backgroundColor = Colors.white;

  static const int primaryColorHex = 0xFFEE5561;

  static const int white70 = 0x70C73D5D;

  static const int orangeColorHex = 0xFFFDBB5E;

  static const int facebookColorHex = 0xFF4084EF;

  static const int greyColorHex = 0xFF9BA3B7;

  static const int lightGreyColor1Hex = 0xFFE2E2E2;

  static const int lightGreyColorHex = 0xff959C9E;

  static const int titleGreyColorHex = 0xFFB2AEAE;

  static const int lightGreyColor2Hex = 0xFF43586B;

  static const int lightGreyColor3Hex = 0xFFCCCBCB;

  static const int lightGreyColor4Hex = 0xFFDCDEEA;

  static const int lightGreyColor5Hex = 0xFFD3D3D3;

  static const int blackColorHex = 0xff000000;

  static const int selectedPageColor = 0xffEE5561;

  static const int nonSelectedPageColor = 0xFFEEEEED;

  static const int formFieldColor = 0xFFF5F5F5;

  static const int fieldHintColor = 0xFF43586B;

  static const int createAccountColor = 0xFF0075FE;

  static const int otpFieldColor = 0xFFF5F5F5;

  static const int outLineColorOfProductUsed = 0xff007428;

  static const int gradient1Hex = 0xff9E55FF;

  static const int gradient2Hex = 0xff9E55FF;

  static const int profileHex = 0xff9BA1CC;

  static const int greenHex = 0xff00656D;

  static const int helpColorHex = 0xff1A3A67;

  static const int progressColorHex = 0xff0381FF;

  static const int homeTabBarHex = 0xffF7F7FA;

  static const int homeTabBarProgressHex = 0xff0021FF;

  static const Color transparent = Color.fromARGB(0, 255, 255, 255);
}
