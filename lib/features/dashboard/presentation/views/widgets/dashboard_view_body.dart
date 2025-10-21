import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_counter/core/constants/app_colors.dart';
import 'package:iron_counter/core/constants/app_strings.dart';
import 'package:iron_counter/core/constants/app_styles.dart';
import 'package:iron_counter/core/widgets/custom_app_bar.dart';
import 'package:iron_counter/features/dashboard/presentation/views/widgets/category_card.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),

        Expanded(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Categories Grid
                Expanded(
                  child: GridView(
                    padding: EdgeInsets.all(6.w),
                    gridDelegate:
                         SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12.r,
                          mainAxisSpacing: 12.r,
                          childAspectRatio: 0.7.w,
                        ),
                    children: [

                      CategoryCard(
                        title: AppStrings.gym,
                        titleStyle: AppStyles.titleLarge,
                        subtitle: AppStrings.gymSubtitle,
                        subtitleStyle: AppStyles.bodySmall,
                        color: AppColors.kGym,
                        icon: Icons.fitness_center,
                        iconColor: AppColors.kBlack,
                        gradientColors: [
                          AppColors.kAmber3,
                          AppColors.kAmber6,
                          AppColors.kAmber9,
                        ],
                      ),

                      CategoryCard(
                        title: AppStrings.cardio,
                        titleStyle: AppStyles.titleLarge,
                        subtitle: AppStrings.cardioSubtitle,
                        subtitleStyle: AppStyles.bodySmall,
                        icon: Icons.directions_run,
                        iconColor: AppColors.kBlack,
                        color: AppColors.kCardio,
                        // Fallback color
                        gradientColors: [
                          AppColors.kBlue3,
                          AppColors.kBlue6,
                          AppColors.kBlue9,
                        ],
                      ),

                      CategoryCard(
                        title: AppStrings.links,
                        titleStyle: AppStyles.titleLarge,
                        subtitle: AppStrings.linksSubtitle,
                        subtitleStyle: AppStyles.bodySmall,
                        icon: Icons.link,
                        iconColor: AppColors.kBlack,
                        color: AppColors.kLinks,
                        gradientColors: [
                          AppColors.kGreen3,
                          AppColors.kGreen6,
                          AppColors.kGreen9,
                        ],
                      ),

                      CategoryCard(
                        title: AppStrings.foods,
                        titleStyle: AppStyles.titleLarge,
                        subtitle: AppStrings.foodsSubtitle,
                        subtitleStyle: AppStyles.bodySmall,
                        icon: Icons.restaurant,
                        iconColor: AppColors.kBlack,
                        color: AppColors.kFoods,
                        gradientColors: [
                          AppColors.kRed3,
                          AppColors.kRed6,
                          AppColors.kRed9,
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
