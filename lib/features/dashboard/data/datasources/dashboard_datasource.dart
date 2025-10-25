import 'package:flutter/material.dart';
import 'package:training_sync/core/constants/app_colors.dart';
import 'package:training_sync/core/constants/app_strings.dart';
import 'package:training_sync/features/dashboard/data/models/dashboard_model.dart';

abstract class DashboardDataSource {
  Future<List<DashboardModel>> fetchCategories();
}

class DashboardLocalDataSource implements DashboardDataSource {

  @override
  Future<List<DashboardModel>> fetchCategories() async {

    await Future.delayed(const Duration(milliseconds: 200));

    return [
      DashboardModel(
        id: '1',
        title: AppStrings.gym,
        subtitle: AppStrings.gymSubtitle,
        icon: Icons.fitness_center,
        color: AppColors.kAmber6,
        gradientColors: [AppColors.kAmber3, AppColors.kAmber6, AppColors.kAmber9],
      ),
      DashboardModel(
        id: '2',
        title: AppStrings.cardio,
        subtitle: AppStrings.cardioSubtitle,
        icon: Icons.directions_run,
        color: AppColors.kBlue6,
        gradientColors: [AppColors.kBlue3, AppColors.kBlue6, AppColors.kBlue9],
      ),
      DashboardModel(
        id: '3',
        title: AppStrings.links,
        subtitle: AppStrings.linksSubtitle,
        icon: Icons.link,
        color: AppColors.kGreen6,
        gradientColors: [AppColors.kGreen3, AppColors.kGreen6, AppColors.kGreen9],
      ),
      DashboardModel(
        id: '4',
        title: AppStrings.foods,
        subtitle: AppStrings.foodsSubtitle,
        icon: Icons.restaurant,
        color: AppColors.kRed6,
        gradientColors: [AppColors.kRed3, AppColors.kRed6, AppColors.kRed9],
      ),
    ];
  }
}
