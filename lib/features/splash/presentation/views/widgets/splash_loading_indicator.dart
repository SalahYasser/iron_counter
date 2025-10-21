import 'package:flutter/material.dart';
import 'package:iron_counter/core/constants/app_colors.dart';
import 'package:iron_counter/core/constants/app_strings.dart';
import 'package:iron_counter/core/constants/app_styles.dart';

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
            width: 100,
            child: LinearProgressIndicator(
              backgroundColor: Colors.white.withOpacity(0.3),
              valueColor: AlwaysStoppedAnimation<Color>(
                AppColors.kPurple2.withOpacity(0.8),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 16),

          Text(
            AppStrings.splashTagline,
            style: AppStyles.splashTagline,
          ),
        ],
      ),
    );
  }
}