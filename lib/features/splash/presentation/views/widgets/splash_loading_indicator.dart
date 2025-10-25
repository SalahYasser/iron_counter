import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_sync/core/constants/app_colors.dart';
import 'package:training_sync/core/constants/app_strings.dart';
import 'package:training_sync/core/constants/app_styles.dart';

class SplashLoadingIndicator extends StatelessWidget {
  const SplashLoadingIndicator({
    super.key,
    required this.opacity,
  });

  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Column(
        children: [

          SizedBox(
            width: 80.w,
            child: LinearProgressIndicator(
              backgroundColor: Colors.white.withOpacity(0.3),
              valueColor: AlwaysStoppedAnimation<Color>(
                AppColors.kPurple2.withOpacity(0.8),
              ),
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
          SizedBox(height: 10.h),

          Text(
            AppStrings.splashTagline,
            style: AppStyles.splashTagline,
          ),
        ],
      ),
    );
  }
}