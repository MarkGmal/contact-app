import 'package:flutter/material.dart';

import '../Consts/app_color.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: AppColorS.darkBlueColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColorS.darkBlueColor,
      primary: AppColorS.darkBlueColor,
      secondary: AppColorS.goldColor,
    ),
  );
}
