import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iron_counter/core/constants/app_colors.dart';
import 'package:iron_counter/core/helper_functions/build_linear_gradient.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({
    super.key,
    required this.scale,
  });

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale,

      child: Container(
        width: 80.w,
        height: 72.h,
        decoration: BoxDecoration(
          gradient: buildLinearGradient(
            colors: [
              AppColors.kPurple4,
              AppColors.kPurple5,
              AppColors.kPurple7,
            ],
          ),
          borderRadius: BorderRadius.circular(14.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.kPurple4.withOpacity(0.5),
              blurRadius: 20,
              offset: Offset(0, 7.r),
            ),
          ],
        ),

        child: Icon(
          FontAwesomeIcons.dumbbell,
          color: AppColors.kTextPrimary,
          size: 30.sp,
        ),
      ),
    );
  }
}