import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_sync/features/dashboard/presentation/manager/dashboard_cubit/dashboard_cubit.dart';
import 'package:training_sync/features/dashboard/presentation/manager/dashboard_cubit/dashboard_state.dart';
import 'package:training_sync/features/dashboard/presentation/views/widgets/dashboard_header.dart';
import 'category_card.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        if (state is DashboardLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is DashboardSuccessful) {
          return Column(
            children: [
              DashboardHeader(),
              SizedBox(height: 10.h),

              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(20.w),
                  itemCount: state.categories.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.w,
                    mainAxisSpacing: 16.h,
                    childAspectRatio: 0.78,
                  ),
                  itemBuilder: (context, index) {
                    final category = state.categories[index];

                    return CategoryCard(
                      title: category.title,
                      subtitle: category.subtitle,
                      icon: category.icon,
                      color: category.color,
                      gradientColors: category.gradientColors,
                      delay: index * 200,
                    );
                  },
                ),
              ),
            ],
          );
        } else if (state is DashboardFailure) {
          return Center(child: Text(state.message));
        }
        return const SizedBox.shrink();
      },
    );
  }
}
