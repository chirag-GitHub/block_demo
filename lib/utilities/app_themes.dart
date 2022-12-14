import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppThemes {
  AppThemes._();

  static String gilroyBlack = "Gilroy Black";
  static String gilroyBold = "Gilroy Bold";
  static String gilroyExtraBold = "Gilroy Extra Bold";
  static String gilroyLight = "Gilroy Light";
  static String gilroyMedium = "Gilroy Medium";
  static String gilroyRegular = "Gilroy Regular";
  static String gilroySemiBold = "Gilroy SemiBold";


  /*
  NAME         SIZE  WEIGHT  SPACING
  headline1    96.0  light   -1.5
  headline2    60.0  light   -0.5
  headline3    48.0  regular  0.0
  headline4    34.0  regular  0.25
  headline5    24.0  regular  0.0
  headline6    20.0  medium   0.15
  subtitle1    16.0  regular  0.15
  subtitle2    14.0  medium   0.1
  body1        16.0  regular  0.5   (bodyText1)
  body2        14.0  regular  0.25  (bodyText2)
  button       14.0  medium   1.25
  caption      12.0  regular  0.4
  overline     10.0  regular  1.5
*/
  //constants color range for light theme
  static const Color _colorLightWhite = Colors.white;
  static const Color _colorLightBlack = Colors.black;
  static const Color _colorLightPrimary = Color(0xffFE4B32);
  static const Color _colorLightSecondary = Color(0xff228C22);
  static const Color _colorLightGray = Colors.grey;
  static const Color _colorLightRed = Colors.red;
  static const Color colorLightPrimary = Color(0xffFE4B32);
  static const Color colorLightSecondary = Color(0xffEF47A6);

  //text theme for light theme
  static final TextStyle _lightHeadingTextStyle1 = TextStyle(fontSize: 18.sp, color: _colorLightBlack, fontFamily: gilroyBlack);
  static final TextStyle _lightHeadingTextStyle2 = TextStyle(fontSize: 16.sp, color: _colorLightBlack, fontFamily: gilroyBold);
  static final TextStyle _lightHeadingTextStyle3 = TextStyle(fontSize: 14.sp, color: _colorLightBlack, fontFamily: gilroyBold);
  static final TextStyle _lightHeadingTextStyle4 = TextStyle(fontSize: 12.sp, color: _colorLightBlack, fontFamily: gilroyBold);
  static final TextStyle _lightHeadingTextStyle5 = TextStyle(fontSize: 10.sp, color: _colorLightBlack, fontFamily: gilroyMedium);
  static final TextStyle _lightHeadingTextStyle6 = TextStyle(fontSize: 8.sp, color: _colorLightBlack, fontFamily: gilroyMedium);
  static final TextStyle _lightSubtitle1TextStyle = TextStyle(fontSize: 14.sp, color: _colorLightBlack, fontFamily: gilroySemiBold);
  static final TextStyle _lightSubtitle2TextStyle = TextStyle(fontSize: 14.sp, color: _colorLightBlack, fontFamily: gilroyMedium);
  static final TextStyle _lightBody1TextStyle = TextStyle(fontSize: 10.sp, color: _colorLightBlack, fontFamily: gilroyRegular);
  static final TextStyle _lightBody2TextStyle = TextStyle(fontSize: 10.sp, color:_colorLightGray,fontFamily: gilroyRegular);
  static final TextStyle _lightButtonTextStyle = TextStyle(fontSize: 14.sp, color: _colorLightWhite,fontFamily: gilroyMedium);

  static final TextStyle lightTextFormTitleTextStyle = TextStyle(fontSize: 12.sp, color: _colorLightGray,fontFamily: gilroyMedium);

  static final TextTheme _lightTextTheme = TextTheme(
    headline1: _lightHeadingTextStyle1,
    headline2: _lightHeadingTextStyle2,
    headline3: _lightHeadingTextStyle3,
    headline4: _lightHeadingTextStyle4,
    headline5: _lightHeadingTextStyle5,
    headline6: _lightHeadingTextStyle6,
    bodyText1: _lightBody1TextStyle,
    bodyText2: _lightBody2TextStyle,
    button: _lightButtonTextStyle,
    subtitle1: _lightSubtitle1TextStyle,
    subtitle2: _lightSubtitle2TextStyle,
  );

  //the light theme
  static final ThemeData lightAppTheme = ThemeData(
    fontFamily: gilroyBold,
    scaffoldBackgroundColor: _colorLightWhite,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: _colorLightPrimary,),
    appBarTheme: const AppBarTheme(
      color: _colorLightWhite,
      iconTheme: IconThemeData(color: _colorLightBlack),
      // toolbarTextStyle: _lightTextTheme,
      // titleTextStyle: _lightTextTheme,
      //textTheme: _lightTextTheme,
    ),
    colorScheme: ColorScheme.light(
      primary: colorLightPrimary,
      secondary: _colorLightSecondary,
      onPrimary: _colorLightBlack,
      background: _colorLightWhite

    ),
    backgroundColor: _colorLightWhite,
    primaryColor: colorLightPrimary,
    selectedRowColor: _colorLightSecondary,
    snackBarTheme: SnackBarThemeData(backgroundColor: _colorLightRed),
    iconTheme: IconThemeData(color: _colorDarkBlack,),
    popupMenuTheme: PopupMenuThemeData(color: _colorLightWhite),
    textTheme: _lightTextTheme,
    buttonTheme: ButtonThemeData(buttonColor: _colorLightPrimary, textTheme: ButtonTextTheme.primary),
    unselectedWidgetColor: _colorLightGray,
    hintColor: _colorLightGray,
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)), borderSide: BorderSide.none),
        fillColor: Colors.grey.withAlpha(40),
        hintStyle: TextStyle(fontSize: 12.sp, color: _colorLightGray, fontFamily: gilroyRegular),
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0)
    ),

  );

  //constants color range for dark theme
  static const Color _colorDarkWhite = Colors.white;
  static const Color _colorDarkBlack = Colors.black;
  static const Color _colorDarkPrimary = Color(0xffe80f29);
  static const Color _colorDarkGray = Colors.grey;
  static const Color _colorDarkRed = Colors.deepPurpleAccent;
  static const Color colorDarkPrimary = Color(0xffe80f29);
  static const Color colorDarkSecondary = Color(0xffef5769);

  //text theme for dark theme
  static final TextStyle _darkHeadingTextStyle1 = TextStyle(fontSize: 18.sp, color: _colorDarkWhite, fontFamily: gilroyBlack);
  static final TextStyle _darkHeadingTextStyle2 = TextStyle(fontSize: 16.sp, color: _colorDarkWhite, fontFamily: gilroyBold);
  static final TextStyle _darkHeadingTextStyle3 = TextStyle(fontSize: 14.sp, color: _colorDarkWhite, fontFamily: gilroyBold);
  static final TextStyle _darkHeadingTextStyle4 = TextStyle(fontSize: 12.sp, color: _colorDarkWhite, fontFamily: gilroyBold);
  static final TextStyle _darkHeadingTextStyle5 = TextStyle(fontSize: 10.sp, color: _colorDarkWhite, fontFamily: gilroyMedium);
  static final TextStyle _darkHeadingTextStyle6 = TextStyle(fontSize: 8.sp, color: _colorDarkWhite, fontFamily: gilroyMedium);
  static final TextStyle _darkSubtitle1TextStyle = TextStyle(fontSize: 14.sp, color: _colorDarkWhite, fontFamily: gilroySemiBold);
  static final TextStyle _darkSubtitle2TextStyle = TextStyle(fontSize: 14.sp, color: _colorDarkWhite, fontFamily: gilroyMedium);
  static final TextStyle _darkBody1TextStyle = TextStyle(fontSize: 10.sp, color: _colorDarkWhite, fontFamily: gilroyRegular);
  static final TextStyle _darkBody2TextStyle = TextStyle(fontSize: 10.sp, color:_colorDarkGray,fontFamily: gilroyRegular);
  static final TextStyle _darkButtonTextStyle = TextStyle(fontSize: 14.sp, color: _colorDarkBlack,fontFamily: gilroyMedium);

  static final TextStyle darkTextFormTitleTextStyle = TextStyle(fontSize: 12.sp, color: _colorLightGray,fontFamily: gilroyMedium);


  static final TextTheme _darkTextTheme = TextTheme(
    headline1: _darkHeadingTextStyle1,
    headline2: _darkHeadingTextStyle2,
    headline3: _darkHeadingTextStyle3,
    headline4: _darkHeadingTextStyle4,
    headline5: _darkHeadingTextStyle5,
    headline6: _darkHeadingTextStyle6,
    bodyText1: _darkBody1TextStyle,
    bodyText2: _darkBody2TextStyle,
    button: _darkButtonTextStyle,
    subtitle1: _darkSubtitle1TextStyle,
    subtitle2: _darkSubtitle2TextStyle,
  );


  //the dark theme
  static final ThemeData darkAppTheme = ThemeData(
    fontFamily: gilroyBold,
    scaffoldBackgroundColor: _colorDarkBlack,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: _colorDarkPrimary,),
    appBarTheme: const AppBarTheme(
      color: _colorDarkBlack,
      iconTheme: IconThemeData(color: _colorDarkWhite),
      // textTheme: _darkTextTheme,
    ),
    colorScheme: const ColorScheme.dark(
      primary: colorDarkPrimary,
      secondary: _colorDarkBlack,
      onPrimary: _colorDarkWhite,
      background: _colorDarkBlack
    ),
    backgroundColor: _colorDarkBlack,
    primaryColor: colorDarkPrimary,
    snackBarTheme: SnackBarThemeData(backgroundColor: _colorDarkRed),
    iconTheme: IconThemeData(color: _colorDarkWhite,),
    popupMenuTheme: PopupMenuThemeData(color: _colorDarkBlack),
    textTheme: _darkTextTheme,
    buttonTheme: ButtonThemeData(buttonColor: _colorDarkPrimary, textTheme: ButtonTextTheme.primary),
    unselectedWidgetColor: _colorDarkGray,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)), borderSide: BorderSide.none),
      fillColor: Colors.grey.withAlpha(40),
      hintStyle: TextStyle(fontSize: 12.sp, color: _colorDarkGray, fontFamily: gilroyRegular),
      filled: true,
      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0)
    ),
    hintColor: _colorDarkGray,
  );

}