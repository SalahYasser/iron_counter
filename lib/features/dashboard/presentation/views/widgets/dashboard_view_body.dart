import 'package:flutter/material.dart';
import 'package:iron_counter/core/constants/app_colors.dart';
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
                        title: 'Gym',
                        subtitle: 'Weights & Strength Training',
                        icon: Icons.fitness_center,
                        color: AppColors.kGym,
                        iconColor: AppColors.kBlack,
                      ),

                      CategoryCard(
                        title: 'Cardio',
                        subtitle: 'Cardiovascular Exercises',
                        icon: Icons.directions_run,
                        color: AppColors.kCardio,
                        iconColor: AppColors.kBlack,
                      ),

                      CategoryCard(
                        title: 'Links',
                        subtitle: 'Useful Resources & Tips',
                        icon: Icons.link,
                        color: AppColors.kLinks,
                        iconColor: AppColors.kBlack,
                      ),

                      CategoryCard(
                        title: 'Foods',
                        subtitle: 'Nutrition & Diet Plans',
                        icon: Icons.restaurant,
                        color: AppColors.kFoods,
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
