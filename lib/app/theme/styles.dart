import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app.dart';

/// A chunk of styles used in the application.
/// Will be ignored for test since all are static values and would not change.
// coverage:ignore-file
abstract class Styles {

 static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    accentColorBrightness: Brightness.dark,
    backgroundColor: Colors.white,
    fontFamily: GoogleFonts.openSans().fontFamily,
    primaryColor: ColorsValue.primaryColor,
    primarySwatch: const MaterialColor(
      ColorsValue.primaryColorHex,
      ColorsValue.primaryColorSwatch,
    ),
    //accentColor: ColorsValue.accountColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    elevatedButtonTheme: elevatedButtonStyle,
    textButtonTheme: textButtonStyle,
  );

  static ElevatedButtonThemeData elevatedButtonStyle = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: ColorsValue.accountColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Dimens.thirty,
        ),
      ),
      padding: Dimens.edgeInsets15_15_15_15,
    ),
  );

  static TextButtonThemeData textButtonStyle = TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: Colors.transparent,
      elevation: Dimens.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Dimens.thirty,
        ),
      ),
    ),
  );

  static TextStyle boldWhite23 = GoogleFonts.openSans(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: Dimens.twenty + Dimens.three,
  );

  static TextStyle boldWhite16 = GoogleFonts.openSans(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: Dimens.sixTeen,
  );

  static TextStyle white15 = GoogleFonts.openSans(
    fontSize: Dimens.ten + Dimens.five,
    color: Colors.white,
  );

  static TextStyle white14 = GoogleFonts.openSans(
    fontSize: Dimens.ten + Dimens.four,
    color: Colors.white,
  );

  static TextStyle teal16 = GoogleFonts.openSans(
    color: Colors.teal,
    fontSize: Dimens.sixTeen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle grey16 = GoogleFonts.openSans(
    color: ColorsValue.greyColor,
    fontSize: Dimens.sixTeen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle black12 = GoogleFonts.openSans(
    color: Colors.black,
    fontSize: Dimens.twelve,
    fontWeight: FontWeight.normal,
  );

  static TextStyle boldblack16 = GoogleFonts.openSans(
    color: Colors.black,
    fontSize: Dimens.sixTeen,
    fontWeight: FontWeight.bold,
  );

  static TextStyle blackBold12 = GoogleFonts.openSans(
    color: Colors.black,
    fontSize: Dimens.twelve,
    fontWeight: FontWeight.bold,
  );

  /*static var outlineBorderRadius10 = const OutlineInputBorder(
    borderRadius: BorderRadius.all(
    ),
    borderSide: BorderSide.none,
  );

  static var rectangularBorder = const RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(Dimens.twenty),
      bottomRight: Radius.circular(Dimens.twenty),
    ),
  );*/

  static TextStyle appBarTextColor = GoogleFonts.openSans(
    color: Colors.white,
    fontSize: Dimens.eighteen,
    fontWeight: FontWeight.bold,
  );

  static TextStyle appBaruserName = GoogleFonts.openSans(
    color: Colors.black,
    fontSize: Dimens.fourteen,
    fontWeight: FontWeight.bold,
  );

  static var elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all(
        boldWhite16,
      ),
      padding: MaterialStateProperty.all(
        Dimens.edgeInsets15,
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            Dimens.ten,
          ),
        ),
      ),
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) => states.contains(MaterialState.disabled)
            ? ColorsValue.lightGreyColor
            : ColorsValue.primaryColor,
      ),
    ),
  );

  static var outlinedButtonTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all(
        teal16,
      ),
      padding: MaterialStateProperty.all(
        Dimens.edgeInsets15,
      ),
    ),
  );

  static TextStyle emailPageText = GoogleFonts.openSans(
    fontSize: Dimens.ten + Dimens.four,
    color: ColorsValue.primaryColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle formTextStyle = GoogleFonts.openSans(
    fontSize: Dimens.ten + Dimens.seven,
   // color: ColorsValue.formFieldTextIcon,
    fontWeight: FontWeight.bold,
  );

  static TextStyle formErrorTextStyle = GoogleFonts.openSans(
    fontSize: Dimens.ten + Dimens.seven,
    color: Colors.red,
    fontWeight: FontWeight.bold,
  );

  static var elevatedButtonThemeCaddie = ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all(
        boldWhite16,
      ),
      padding: MaterialStateProperty.all(
        Dimens.edgeInsets16,
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            Dimens.ten,
          ),
        ),
      ),
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) => states.contains(MaterialState.disabled)
            ? ColorsValue.primaryColor
            : ColorsValue.primaryColor,
      ),
    ),
  );

  static TextStyle formTextColor = GoogleFonts.openSans(
    //color: ColorsValue.formFieldTextEnabledColor,
    fontSize: Dimens.twenty,
    fontWeight: FontWeight.bold,
  );

  static TextStyle textColor = GoogleFonts.openSans(
    //color: ColorsValue.formFieldTextEnabledColor,
    fontSize: Dimens.fourteen,
    fontWeight: FontWeight.bold,
  );

  static TextStyle blackBold19 = GoogleFonts.openSans(
    color: Colors.black,
    fontSize: Dimens.ten + Dimens.six,
    fontWeight: FontWeight.bold,
  );

  static TextStyle blackBold13 = GoogleFonts.openSans(
    color: Colors.black,
    fontSize: Dimens.ten + Dimens.three,
    fontWeight: FontWeight.bold,
  );

  static TextStyle blackBold11 = GoogleFonts.openSans(
    color: Colors.black,
    fontSize: Dimens.ten + Dimens.one,
    fontWeight: FontWeight.w700,
  );

  static TextStyle blackBold10 = GoogleFonts.openSans(
    color: Colors.black,
    fontSize: Dimens.ten,
    fontWeight: FontWeight.w700,
  );

  static TextStyle blacknormal11 = GoogleFonts.openSans(
    color: Colors.black,
    fontSize: Dimens.ten + Dimens.one,
    fontWeight: FontWeight.normal,
  );

  /*static var popupRectangularBorder = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(Dimens.five),
    ),
  );*/

  static TextStyle blackBold15 = GoogleFonts.openSans(
    color: Colors.black,
    fontSize: Dimens.ten + Dimens.five,
    fontWeight: FontWeight.bold,
  );

  static TextStyle blackBold16 = GoogleFonts.openSans(
    color: Colors.black,
    fontSize: Dimens.ten + Dimens.six,
    fontWeight: FontWeight.bold,
  );

  static TextStyle blackNormal15 = GoogleFonts.openSans(
    color: Colors.black,
    fontSize: Dimens.ten + Dimens.five,
    fontWeight: FontWeight.normal,
  );

  static TextStyle whiteBold13 = GoogleFonts.openSans(
    color: Colors.white,
    fontSize: Dimens.ten + Dimens.three,
    fontWeight: FontWeight.bold,
  );

  static TextStyle whiteBold15 = GoogleFonts.openSans(
    color: Colors.white,
    fontSize: Dimens.ten + Dimens.five,
    fontWeight: FontWeight.bold,
  );

  static TextStyle greyBold13 = GoogleFonts.openSans(
    color: ColorsValue.helpColor,
    fontSize: Dimens.ten + Dimens.five,
    fontWeight: FontWeight.bold,
  );

  static TextStyle primaryBold13 = GoogleFonts.openSans(
    color: ColorsValue.primaryColor,
    fontSize: Dimens.ten + Dimens.five,
    fontWeight: FontWeight.bold,
  );
}
