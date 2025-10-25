import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_sync/core/constants/app_colors.dart';
import 'package:training_sync/core/constants/app_strings.dart';
import 'package:training_sync/core/constants/app_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: AppColors.kPrimaryGradient,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12.r),
            bottomRight: Radius.circular(12.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 4.h),
          child: Row(
            children: [
              // App logo and title
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.dashboardTitle,
                      style: AppStyles.dashboardTitle,
                    ),
                    SizedBox(height: 4.h),

                    Text(
                      AppStrings.chooseWorkoutType,
                      style: AppStyles.categorySubtitle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}