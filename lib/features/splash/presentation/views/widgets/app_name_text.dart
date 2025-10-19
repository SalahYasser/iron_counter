import 'package:flutter/material.dart';
import 'package:iron_counter/core/constants/app_colors.dart';
import 'package:iron_counter/core/constants/app_strings.dart';
import 'package:iron_counter/core/widgets/gradient_text.dart';

class AppNameText extends StatelessWidget {
  const AppNameText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // First half of app name (light gradient)
        GradientText(
          text: AppStrings.firstAppName,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w300,
            letterSpacing: 4,
          ),
          gradient: LinearGradient(
            colors: [
              AppColors.kPurple1,
              AppColors.kPurple2,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        // Second half of app name (stronger gradient)
        GradientText(
          text: AppStrings.lastAppName,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w800,
            letterSpacing: 4,
          ),
          gradient: LinearGradient(
            colors: [
              AppColors.kPurple3,
              AppColors.kPurple4,
              AppColors.kPurple5,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
      ],
    );
  }
}

Widget buildAppName(double opacity) {
  return AnimatedOpacity(
    duration: const Duration(milliseconds: 400),
    curve: Curves.easeInOut,
    opacity: opacity,
    child: const AppNameText(),
  );
}
