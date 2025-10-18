import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_colors.dart';

class AppTheme {

  static ThemeData get darkTheme {
    final textTheme = GoogleFonts.montserratTextTheme(
      ThemeData.dark().textTheme,
    );

    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.kPrimary,
      scaffoldBackgroundColor: AppColors.kBackground,

      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.kBackground,
        elevation: 0,
        foregroundColor: AppColors.kTextPrimary,
      ),

      colorScheme: const ColorScheme.dark(
        primary: AppColors.kPrimary,
        secondary: AppColors.kPrimaryDark,
        background: AppColors.kBackground,
        surface: AppColors.kSurface,
        onSurface: AppColors.kTextPrimary,
      ),

      textTheme: textTheme.copyWith(

        titleLarge: textTheme.titleLarge!.copyWith(
          color: AppColors.kTextPrimary,
          fontWeight: FontWeight.bold,
          fontSize: 24.sp,
        ),

        titleMedium: textTheme.titleMedium!.copyWith(
          color: AppColors.kTextPrimary,
          fontWeight: FontWeight.bold,
          fontSize: 18.sp,
        ),

        bodyLarge: textTheme.bodyLarge!.copyWith(
          color: AppColors.kTextPrimary,
          fontWeight: FontWeight.normal,
          fontSize: 16.sp,
        ),

        bodyMedium: textTheme.bodyMedium!.copyWith(
          color: AppColors.textSecondary,
          fontWeight: FontWeight.normal,
          fontSize: 14.sp,
        ),

      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.kPrimary,
          foregroundColor: AppColors.kBackground,
          minimumSize: Size(double.infinity, 56.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0.r),
          ),
          textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
        ),
      ),

      iconTheme: const IconThemeData(color: AppColors.kPrimary),
    );
  }
}
