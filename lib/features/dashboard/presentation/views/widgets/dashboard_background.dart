import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:training_sync/core/constants/app_colors.dart';
import 'package:training_sync/core/helper_functions/build_linear_gradient.dart';

class DashboardBackground extends StatelessWidget {
  const DashboardBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: buildLinearGradient(
              colors: [
                AppColors.kAmber6.withOpacity(0.9),
                AppColors.kBlue6.withOpacity(0.8),
                AppColors.kGreen6.withOpacity(0.7),
                AppColors.kRed6.withOpacity(0.6),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
            child: Container(color: Colors.black.withOpacity(0.1)),
          ),
        ),
      ],
    );
  }
}
