import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_counter/core/constants/app_colors.dart';
import 'package:iron_counter/core/helper_functions/build_linear_gradient.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.iconColor,
    required this.titleStyle,
    required this.subtitleStyle,
    this.gradientColors,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final Color iconColor;
  final TextStyle titleStyle;
  final TextStyle subtitleStyle;
  final List<Color>? gradientColors;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.h,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12.r),
          gradient: gradientColors != null
              ? buildLinearGradient(colors: gradientColors!)
              : buildLinearGradient(
                  colors: [
                    color.withOpacity(0.9.h),
                    color,
                    color.withOpacity(0.8.h),
                  ],
                ),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.3.h),
              blurRadius: 6.r,
              offset: Offset(0, 2.h),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(12.r),
            onTap: () {
              print('$title tapped');
            },
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Icon
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      alignment: Alignment.center,
                      width: 40.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: AppColors.kDisabledTextPrimary.withOpacity(0.4),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(icon, color: iconColor, size: 24.w),
                    ),
                  ),

                  // Text content
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: titleStyle),
                       SizedBox(height: 2.h),

                      Text(
                        subtitle,
                        style: subtitleStyle,
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
      ),
    );
  }
}