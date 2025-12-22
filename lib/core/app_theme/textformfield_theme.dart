import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

final InputDecorationTheme textFieldDecorationTheme = InputDecorationTheme(
  isDense: true,
  filled: true,
  hintStyle: GoogleFonts.inter(
    textStyle: TextStyle(
      color: ColorPalette.textBlack3,
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
    ),
  ),
  fillColor: ColorPalette.backgroundWhite2,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(4.r),
    borderSide: const BorderSide(color: Colors.grey),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(4.r),
    borderSide: const BorderSide(color: Colors.grey),
  ),

  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(4.r),
    borderSide: const BorderSide(color: ColorPalette.textBlack3, width: 1.5),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(4.r),
    borderSide: const BorderSide(color: Colors.red, width: 1.5),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(4.r),
    borderSide: const BorderSide(color: Colors.red, width: 1.5),
  ),
  errorStyle: TextStyle(color: Colors.red, fontSize: 12.sp),
);
