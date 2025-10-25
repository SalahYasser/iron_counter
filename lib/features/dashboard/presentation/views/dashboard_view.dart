import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../manager/dashboard_cubit/dashboard_cubit.dart';
import '../manager/dashboard_cubit/dashboard_state.dart';
import 'widgets/dashboard_view_body.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  static const String routeName = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DashboardCubit()..loadDashboardData(),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: BlocBuilder<DashboardCubit, DashboardState>(
          builder: (context, state) {
            if (state is DashboardLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is DashboardError) {
              return Center(
                child: Text(
                  state.failure.message ?? 'Something went wrong',
                  style: const TextStyle(color: Colors.red),
                ),
              );
            } else if (state is DashboardLoaded) {
              return const DashboardViewBody();
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
