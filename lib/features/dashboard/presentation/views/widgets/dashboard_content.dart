import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_sync/features/dashboard/domain/entities/dashboard_entity.dart';
import 'package:training_sync/features/dashboard/presentation/manager/dashboard_cubit/dashboard_cubit.dart';
import 'package:training_sync/features/dashboard/presentation/manager/dashboard_cubit/dashboard_state.dart';
import 'package:training_sync/features/dashboard/presentation/views/widgets/category_card.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        if (state is DashboardLoading) {
          return const Center(child: CircularProgressIndicator());

        } else if (state is DashboardSuccessful) {
          return _buildGridView(state.categories);

        } else if (state is DashboardFailure) {
          return Center(child: Text(state.errMessage));

        } else {
          return const SizedBox();
        }
      },
    );
  }
}

Widget _buildGridView(List<DashboardEntity> categories) {
  return GridView.builder(
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
      return CategoryCard(dashboardEntity: category, delay: index * 200);
    },
  );
}
