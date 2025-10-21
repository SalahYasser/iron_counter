import 'package:flutter/material.dart';
import 'package:iron_counter/core/constants/app_colors.dart';
import 'package:iron_counter/core/constants/app_strings.dart';
import 'package:iron_counter/core/constants/app_styles.dart';
import 'package:iron_counter/core/helper_functions/build_linear_gradient.dart';
import 'package:iron_counter/core/widgets/gradient_text.dart';

class AppNameText extends StatelessWidget {
  const AppNameText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // First half of app name "TRAINING" (light gradient)
        GradientText(
          text: AppStrings.firstAppName,
          style: AppStyles.splashFirstAppName,
          gradient: buildLinearGradient(
            colors: [
              AppColors.kPurple1,
              AppColors.kPurple2,
            ],
          ),
        ),

        // Second half of app name "SYNC" (stronger gradient)
        GradientText(
          text: AppStrings.lastAppName,
          style: AppStyles.splashLastAppName,
          gradient: buildLinearGradient(
            colors: [
              AppColors.kPurple4,
              AppColors.kPurple5,
              AppColors.kPurple7,
            ],
          ),
        ),
      ],
    );
  }
}
