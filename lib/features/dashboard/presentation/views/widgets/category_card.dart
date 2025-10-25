import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_sync/core/constants/app_colors.dart';
import 'package:training_sync/core/constants/app_styles.dart';
import 'package:training_sync/core/helper_functions/build_linear_gradient.dart';
import 'package:training_sync/features/dashboard/domain/entities/dashboard_entity.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.dashboardEntity,
    required this.delay,
  });

  final DashboardEntity dashboardEntity;
  final int delay;

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.r),
            gradient: buildLinearGradient(
              colors: dashboardEntity.gradientColors,
            ),
            boxShadow: [
              BoxShadow(
                color: dashboardEntity.gradientColors.last.withOpacity(0.25),
                blurRadius: 10,
                spreadRadius: 1,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(24.r),
              onTap: () => debugPrint('${dashboardEntity.title} tapped'),

              child: Padding(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 46.w,
                        height: 46.h,
                        decoration: BoxDecoration(
                          color: AppColors.kDisabledTextPrimary.withOpacity(
                            0.4,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          dashboardEntity.icon,
                          color: AppColors.kBlack,
                          size: 24.w,
                        ),
                      ),
                    ),

                    // Text content
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dashboardEntity.title,
                          style: AppStyles.categoryTitle,
                        ),
                        SizedBox(height: 2.h),

                        Text(
                          dashboardEntity.subtitle,
                          style: AppStyles.categorySubtitle,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
        .animate(delay: Duration(milliseconds: delay))
        .fadeIn(duration: 800.ms)
        .scaleXY(begin: 0.92, end: 1, curve: Curves.easeOutBack);
  }
}