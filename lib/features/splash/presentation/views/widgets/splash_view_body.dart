// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:iron_counter/core/constants/app_colors.dart';
// import 'package:iron_counter/core/constants/app_strings.dart';
// import 'package:iron_counter/core/widgets/gradient_icon.dart';
// import 'package:iron_counter/core/widgets/gradient_text.dart';
//
// class SplashViewBody extends StatelessWidget {
//   const SplashViewBody({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           GradientIcon(
//             icon: FontAwesomeIcons.personRunning,
//             size: 80,
//             gradient: LinearGradient(
//               colors: [AppColors.kPrimaryDark, AppColors.kPrimary],
//             ),
//           ),
//           const SizedBox(height: 24),
//
//           GradientText(
//             text: AppStrings.appName,
//             style: Theme.of(context).textTheme.headlineMedium?.copyWith(
//               fontWeight: FontWeight.bold,
//             ),
//             gradient: LinearGradient(
//               colors: [AppColors.kPrimaryDark, AppColors.kPrimary],
//             ),
//           ),
//           const SizedBox(height: 48),
//
//           const CircularProgressIndicator(
//             color: AppColors.kPrimary,
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iron_counter/core/constants/app_colors.dart';
import 'package:iron_counter/core/constants/app_strings.dart';
import 'package:iron_counter/features/splash/presentation/manager/cubit/splash_cubit.dart';
import 'package:iron_counter/features/splash/presentation/manager/cubit/splash_state.dart';
import 'package:iron_counter/features/splash/presentation/views/widgets/splash_background.dart';
import 'package:iron_counter/features/splash/presentation/views/widgets/splash_logo.dart';
import 'package:iron_counter/features/splash/presentation/views/widgets/splash_loading_indicator.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashCubit, SplashState>(
      builder: (context, state) {
        return Stack(
          children: [
            // Background with particles
            const SplashBackground(),

            // Main content
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo with animation
                  SplashLogo(scale: state.scale),

                  const SizedBox(height: 40),

                  // App name with gradient (fade animation)
                  _buildAppName(state.opacity),

                  const SizedBox(height: 20),

                  // Loading indicator
                  SplashLoadingIndicator(opacity: state.opacity),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildAppName(double opacity) {
    return Opacity(opacity: opacity, child: const _AppNameText());
  }
}

class _AppNameText extends StatelessWidget {
  const _AppNameText();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // This would use your GradientText widget with AppStrings
        // For now, using placeholder text
        Text(
          AppStrings.firstAppName,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w300,
            letterSpacing: 4,
            color: Colors.white,
          ),
        ),
        Text(
          AppStrings.lastAppName,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w800,
            letterSpacing: 4,
            color: AppColors.kTextPrimary,
          ),
        ),
      ],
    );
  }
}
