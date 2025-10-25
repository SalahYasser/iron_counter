import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_counter/core/constants/app_colors.dart';
import 'package:iron_counter/core/constants/app_strings.dart';
import 'package:iron_counter/core/constants/app_styles.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppStrings.appName,
            style: AppStyles.dashboardTitle,
          ).animate().fadeIn(duration: 600.ms).slideY(begin: -0.3, end: 0),
          CircleAvatar(
            radius: 22.r,
            backgroundColor: AppColors.kDisabledTextPrimary.withOpacity(0.20),
            child: Icon(Icons.person, color: AppColors.kWhite, size: 24.sp),
          ).animate().scale(duration: 600.ms),
        ],
      ),
    );
  }
}
