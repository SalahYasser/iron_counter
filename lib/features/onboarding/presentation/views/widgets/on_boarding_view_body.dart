import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_sync/core/constants/app_colors.dart';
import 'package:training_sync/core/constants/app_strings.dart';
import 'package:training_sync/core/constants/app_styles.dart';
import 'package:training_sync/core/helper_functions/build_linear_gradient.dart';
import 'package:training_sync/core/widgets/gradient_button.dart';
import 'package:training_sync/core/widgets/gradient_text.dart';
import 'package:training_sync/features/onboarding/presentation/manager/onboarding_cubit.dart';
import 'package:training_sync/features/onboarding/presentation/views/widgets/onboarding_image.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key, required this.onboardingCubit});

  final OnboardingCubit onboardingCubit;

  @override
  Widget build(BuildContext context) {
    final fade = onboardingCubit.fadeIn;
    final scale = onboardingCubit.scaleIn;

    return Container(
      decoration: BoxDecoration(
        gradient: buildLinearGradient(
          colors: [
            AppColors.kPurple7,
            AppColors.kPurple8,
            AppColors.kPurple9,
            AppColors.kPurple10,
          ],
        ),
      ),
      child: SafeArea(
        child: FadeTransition(
          opacity: fade,
          child: ScaleTransition(
            scale: scale,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(flex: 2),
                  const OnboardingImage(),
                  const Spacer(flex: 1),

                  GradientText(
                    text: AppStrings.onboardingTitle,
                    gradient: AppColors.kPrimaryGradient,
                    style: AppStyles.onboardingTitle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16.r),

                  Text(
                    AppStrings.onboardingSubtitle,
                    style: AppStyles.onboardingSubtitle,
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(flex: 3),

                  GradientButton(
                    onPressed: onboardingCubit.navigateToDashboard,
                    buttonText: AppStrings.onboardingButton,
                    textColor: AppColors.kTextPrimary,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
