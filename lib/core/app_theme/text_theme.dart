import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

final TextTheme customTextTheme = TextTheme(
  /// Large page headings (Auth titles, main screens)
  headlineLarge: GoogleFonts.roboto(
    textStyle: TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
      height: 1.5,
      color: ColorPalette.textBlack,
    ),
  ),

  /// Section headings
  headlineMedium: GoogleFonts.roboto(
    textStyle: TextStyle(
      fontSize: 19.sp,
      fontWeight: FontWeight.w700,
      height: 1.5,
      color: ColorPalette.textBlack,
    ),
  ),

  /// Small captions or helper headings
  headlineSmall: GoogleFonts.roboto(
    textStyle: TextStyle(
      fontSize: 11.sp,
      fontWeight: FontWeight.w300,
      height: 1.5,
      color: ColorPalette.textBlack,
    ),
  ),

  /// Large titles (cards, dialogs)
  titleLarge: GoogleFonts.roboto(
    textStyle: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w700,
      height: 1.5,
      color: ColorPalette.textBlack,
    ),
  ),

  /// Standard titles (list items, headers)
  titleMedium: GoogleFonts.roboto(
    textStyle: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w700,
      height: 1.5,
      color: ColorPalette.textBlack,
    ),
  ),

  /// Small titles (labels, metadata)
  titleSmall: GoogleFonts.roboto(
    textStyle: TextStyle(
      fontSize: 11.sp,
      fontWeight: FontWeight.w600,
      height: 1.5,
      color: ColorPalette.textBlack,
    ),
  ),

  /// Main body text (paragraphs)
  bodyLarge: GoogleFonts.roboto(
    textStyle: TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
      height: 1.5,
      color: ColorPalette.textBlack,
    ),
  ),

  /// Default body text
  bodyMedium: GoogleFonts.roboto(
    textStyle: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      height: 1.5,
      color: ColorPalette.textBlack,
    ),
  ),

  /// Small body text (captions, hints)
  bodySmall: GoogleFonts.roboto(
    textStyle: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      height: 1.5,
      color: ColorPalette.textBlack,
    ),
  ),
);
