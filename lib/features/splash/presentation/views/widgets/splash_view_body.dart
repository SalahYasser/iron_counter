import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iron_counter/core/constants/app_colors.dart';
import 'package:iron_counter/core/constants/app_strings.dart';
import 'package:iron_counter/core/widgets/gradient_icon.dart';
import 'package:iron_counter/core/widgets/gradient_text.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GradientIcon(
            icon: FontAwesomeIcons.personRunning,
            size: 80,
            gradient: LinearGradient(
              colors: [AppColors.kPrimaryDark, AppColors.kPrimary],
            ),
          ),
          const SizedBox(height: 24),

          GradientText(
            text: AppStrings.appName,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
            gradient: LinearGradient(
              colors: [AppColors.kPrimaryDark, AppColors.kPrimary],
            ),
          ),
          const SizedBox(height: 48),

          const CircularProgressIndicator(
            color: AppColors.kPrimary,
          ),
        ],
      ),
    );
  }
}
