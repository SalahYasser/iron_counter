import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_sync/core/helper_functions/build_app_name.dart';
import 'package:training_sync/features/splash/presentation/manager/cubit/splash_cubit.dart';
import 'package:training_sync/features/splash/presentation/manager/cubit/splash_state.dart';
import 'package:training_sync/features/splash/presentation/views/widgets/splash_background.dart';
import 'package:training_sync/features/splash/presentation/views/widgets/splash_logo.dart';
import 'package:training_sync/features/splash/presentation/views/widgets/splash_loading_indicator.dart';

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

                   SizedBox(height: 30.h),

                  // App name with gradient (fade animation)
                  buildAppName(state.opacity),

                  SizedBox(height: 14.h),

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
