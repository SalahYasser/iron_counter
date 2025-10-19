import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iron_counter/core/constants/app_colors.dart';

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
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              AppColors.kPurple3,
              AppColors.kPurple4,
              AppColors.kPurple5,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: AppColors.kPurple3.withOpacity(0.5),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),

        child: Icon(
          FontAwesomeIcons.dumbbell,
          color: AppColors.kTextPrimary,
          size: 36,
        ),
      ),
    );
  }
}