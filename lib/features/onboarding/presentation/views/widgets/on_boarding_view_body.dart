import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_counter/core/constants/app_colors.dart';
import 'package:iron_counter/core/constants/app_strings.dart';
import 'package:iron_counter/core/constants/app_urls.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(flex: 2),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: CachedNetworkImage(
                imageUrl: AppUrls.onboardingImage,
                fit: BoxFit.cover,
                height: 200.r,
                placeholder: (context, url) => Container(
                  height: 200.r,
                  color: AppColors.surface,
                  child: Center(
                    child: const CircularProgressIndicator(
                      color: AppColors.primary,
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => Icon(
                  Icons.fitness_center,
                  size: 200.w,
                  color: AppColors.primary,
                ),
              ),
            ),
          ),
          const Spacer(flex: 1),

          Text(
            AppStrings.onboardingTitle,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: AppColors.primary,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.r),

          Text(
            AppStrings.onboardingSubtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const Spacer(flex: 3),

          ElevatedButton(
            onPressed: () {

            },
            child: Text(AppStrings.onboardingButton),
          ),
          SizedBox(height: 20.r),

        ],
      ),
    );
  }
}
