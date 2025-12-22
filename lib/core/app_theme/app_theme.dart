import 'package:ecommerce_firebase/core/app_theme/buttontheme.dart';
import 'package:ecommerce_firebase/core/app_theme/text_theme.dart';
import 'package:ecommerce_firebase/core/app_theme/textformfield_theme.dart';
import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final ThemeData apptheme = ThemeData(
  useMaterial3: true,
  appBarTheme: AppBarTheme(
    scrolledUnderElevation: 0,
    elevation: 0,
    backgroundColor: const Color(0xFF2A2843),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
    ),
  ),
  scaffoldBackgroundColor: ColorPalette.backgroundWhite,
  textTheme: customTextTheme,
  elevatedButtonTheme: customElevatedButtonTheme,
  inputDecorationTheme: textFieldDecorationTheme,

  // OUTLINED BUTTON (Google button)
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: ColorPalette.textBlack,
      side: BorderSide(color: ColorPalette.dividerColor),
      padding: const EdgeInsets.symmetric(vertical: 14),
      textStyle: customTextTheme.bodyMedium,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  ),
);
