import 'package:flutter/material.dart';
import 'package:iron_counter/core/constants/app_colors.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Icon(Icons.fitness_center, size: 80, color: AppColors.kPrimary),
          const SizedBox(height: 24),

          Text(
            'IronCounter',
            style: Theme
                .of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(
              color: AppColors.kTextPrimary,
              fontWeight: FontWeight.bold,
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
