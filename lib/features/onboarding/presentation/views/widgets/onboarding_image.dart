import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iron_counter/core/constants/app_colors.dart';
import 'package:iron_counter/core/constants/app_urls.dart';
import 'package:iron_counter/core/helper_functions/build_linear_gradient.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CachedNetworkImage(
            imageUrl: AppUrls.onboardingImage,
            fit: BoxFit.cover,
            height: 230.r,
            width: double.infinity,
            placeholder: (context, url) => Container(
              height: 230.r,
              color: Colors.black26,
              child: const Center(
                child: CircularProgressIndicator(color: AppColors.kPrimary),
              ),
            ),
            errorWidget: (context, url, error) => Icon(
              FontAwesomeIcons.dumbbell,
              color: AppColors.kPrimary,
              size: 120.w,
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: buildLinearGradient(
                  colors: [
                    AppColors.kBlack.withOpacity(0.1),
                    AppColors.kBlack.withOpacity(0.5),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
