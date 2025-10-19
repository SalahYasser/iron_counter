import 'package:flutter/material.dart';
import 'package:iron_counter/core/constants/app_colors.dart';
import 'package:iron_counter/core/constants/app_strings.dart';
import 'package:iron_counter/features/splash/presentation/views/widgets/purple_particle_painter.dart';

class SplashBackground extends StatelessWidget {
  const SplashBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.kPurple7,
            AppColors.kPurple6,
          ],
        ),
      ),

      child: Stack(
        children: [
          // Purple Particle Background
          Positioned.fill(
            child: CustomPaint(
              painter: PurpleParticlePainter(),
            ),
          ),

          // Version Info
          const Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: _VersionInfo(),
          ),
        ],
      ),
    );
  }
}

class _VersionInfo extends StatelessWidget {
  const _VersionInfo();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.splashTaglineBottom,
          style: TextStyle(
            color: AppColors.kTextPrimary,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Version 1.0.0',
          style: TextStyle(
            color: AppColors.kTextPrimary,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}