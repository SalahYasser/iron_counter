import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_counter/core/constants/app_colors.dart';

class AppStyles {
  // Font family constant
  static const String fontFamily = 'Roboto';

  // Splash Screen Text Styles
  static const TextStyle splashFirstAppName = TextStyle(
    fontFamily: fontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w400,
    letterSpacing: 5,
    color: AppColors.kTextSecondary,
  );

  static const TextStyle splashLastAppName = TextStyle(
    fontFamily: fontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w800,
    letterSpacing: 3,
    color: AppColors.kTextSecondary,
  );

  static final TextStyle splashTagline = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.kDisabledTextPrimary,
  );

  static TextStyle splashTaglineBottom = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.kDisabledTextPrimary,
  );

  static TextStyle versionText = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    color: AppColors.kDisabledTextPrimary,
  );

  // Onboarding Screen Text Styles
  static TextStyle onboardingTitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 22.sp, // Based on titleLarge from theme
    fontWeight: FontWeight.w700,
    color: AppColors.kPrimary,
  );

  static const TextStyle onboardingSubtitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16, // Based on bodyMedium from theme
    fontWeight: FontWeight.w400,
    color: AppColors.kTextPrimary, // Default color, can be overridden
  );

  static TextStyle onboardingButton = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.kTextPrimary,
  );

  // Common Text Styles
  static const TextStyle headlineLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w800,
    letterSpacing: 1.5,
  );

  static TextStyle headlineMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.2,
  );

  static TextStyle headlineSmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.0,
  );

  static TextStyle titleLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.kBlack,
    letterSpacing: 0.8,
  );

  static const TextStyle titleMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  );

  static const TextStyle titleSmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.3,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.2,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.1,
  );

  static TextStyle bodySmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.1,
    color: AppColors.kBlack,
    height: 1.3,
  );

  static const TextStyle labelLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.4,
  );

  static const TextStyle labelMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.3,
  );

  static const TextStyle labelSmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 10,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.2,
  );

  // Button Styles
  static const TextStyle buttonPrimary = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.8,
    color: AppColors.kTextSecondary,
  );

  static const TextStyle buttonSecondary = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  );

  // Gradient Text Base Style
  static const TextStyle gradientTextBase = TextStyle(
    fontFamily: fontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w300,
    letterSpacing: 5,
  );
}