import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_counter/core/constants/app_colors.dart';
import 'package:iron_counter/core/constants/app_styles.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    this.textColor,
  });

  final void Function() onPressed;
  final String buttonText;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.kPrimaryGradient,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.kTextPrimary, width: 1.w),
        boxShadow: [
          BoxShadow(
            color: AppColors.kTextPrimary.withOpacity(0.3.h),
            blurRadius: 8,
            offset: Offset(0, 1.h),
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          side: const BorderSide(color: AppColors.kTextPrimary, width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 24.w),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: AppStyles.onboardingButton,
        ),
      ),
    );
  }
}