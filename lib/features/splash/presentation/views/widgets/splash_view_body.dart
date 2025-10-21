import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iron_counter/core/helper_functions/build_app_name.dart';
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
                  buildAppName(state.opacity),

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
}
