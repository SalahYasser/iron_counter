import 'package:flutter/material.dart';
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
                    padding: const EdgeInsets.all(8),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio: 0.9,
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
                      ),

                      CategoryCard(
                        title: AppStrings.cardio,
                        titleStyle: AppStyles.titleLarge,
                        subtitle:  AppStrings.cardioSubtitle,
                        subtitleStyle: AppStyles.bodySmall,
                        color: AppColors.kCardio,
                        icon: Icons.directions_run,
                        iconColor: AppColors.kBlack,
                      ),

                      CategoryCard(
                        title: AppStrings.links,
                        titleStyle: AppStyles.titleLarge,
                        subtitle:  AppStrings.cardioSubtitle,
                        subtitleStyle: AppStyles.bodySmall,
                        color: AppColors.kLinks,
                        icon: Icons.link,
                        iconColor: AppColors.kBlack,
                      ),

                      CategoryCard(
                        title:  AppStrings.foods,
                        titleStyle: AppStyles.titleLarge,
                        subtitle:  AppStrings.foodsSubtitle,
                        subtitleStyle: AppStyles.bodySmall,
                        color: AppColors.kFoods,
                        icon: Icons.restaurant,
                        iconColor: AppColors.kBlack,
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
