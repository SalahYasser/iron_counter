import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dashboard_background.dart';
import 'dashboard_header.dart';
import 'category_card.dart';
import 'package:iron_counter/core/constants/app_colors.dart';
import 'package:iron_counter/core/constants/app_strings.dart';
import 'package:iron_counter/core/constants/app_styles.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {
        'title': AppStrings.gym,
        'subtitle': AppStrings.gymSubtitle,
        'icon': Icons.fitness_center,
        'color': AppColors.kAmber6,
        'gradient': [AppColors.kAmber3, AppColors.kAmber6, AppColors.kAmber9],
      },
      {
        'title': AppStrings.cardio,
        'subtitle': AppStrings.cardioSubtitle,
        'icon': Icons.directions_run,
        'color': AppColors.kBlue6,
        'gradient': [AppColors.kBlue3, AppColors.kBlue6, AppColors.kBlue9],
      },
      {
        'title': AppStrings.links,
        'subtitle': AppStrings.linksSubtitle,
        'icon': Icons.link,
        'color': AppColors.kGreen6,
        'gradient': [AppColors.kGreen3, AppColors.kGreen6, AppColors.kGreen9],
      },
      {
        'title': AppStrings.foods,
        'subtitle': AppStrings.foodsSubtitle,
        'icon': Icons.restaurant,
        'color': AppColors.kRed6,
        'gradient': [AppColors.kRed3, AppColors.kRed6, AppColors.kRed9],
      },
    ];

    return Stack(
      children: [
        const DashboardBackground(),
        SafeArea(
          child: Column(
            children: [
              const DashboardHeader(),
              SizedBox(height: 10.h),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(20.w),
                  physics: const BouncingScrollPhysics(),
                  itemCount: categories.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.w,
                    mainAxisSpacing: 16.h,
                    childAspectRatio: 0.78,
                  ),
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    return CategoryCard(
                      title: category['title'] as String,
                      subtitle: category['subtitle'] as String,
                      icon: category['icon'] as IconData,
                      color: category['color'] as Color,
                      iconColor: AppColors.kBlack,
                      titleStyle: AppStyles.categoryTitle,
                      subtitleStyle: AppStyles.dashboardSubtitle,
                      gradientColors: category['gradient'] as List<Color>,
                      delay: index * 200,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
