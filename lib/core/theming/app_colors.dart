import 'package:flutter/material.dart';

abstract class AppColors {
  static Color scaffoldBackgroundColor = const Color(0xFFFFFFFF);
  static Color defaultRedColor = const Color(0xffff698a);
  static Color defaultYellowColor = const Color(0xFFfedd69);
  static Color defaultBlueColor = const Color(0xff52beff);
  static Color defaultGreyColor = const Color(0xff77839a);
  static Color defaultLightGreyColor = const Color(0xffc4c4c4);
  static Color defaultLightWhiteColor = const Color(0xFFf2f6fe);

  //  Color Palette
  static Color hotPink = const Color(0x00D9296A);
  static Color deepPink = const Color(0x00A6296E);
  static Color brightBlue = const Color(0x00030A8C);
  static Color lightOrange = const Color(0x00F29C6B);


  static ScrollbarThemeData scrollbarTheme =
  const ScrollbarThemeData().copyWith(
    thumbColor: MaterialStateProperty.all(defaultYellowColor),
    interactive: true,
  );
}