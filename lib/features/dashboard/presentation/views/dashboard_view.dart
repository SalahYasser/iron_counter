import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_sync/core/services/get_it_service.dart';
import 'package:training_sync/features/dashboard/presentation/manager/dashboard_cubit/dashboard_cubit.dart';
import 'package:training_sync/features/dashboard/presentation/views/widgets/dashboard_background.dart';
import 'package:training_sync/features/dashboard/presentation/views/widgets/dashboard_view_body.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  static const String routeName = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DashboardCubit>()..fetchDashboardData(),
      child: const Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            DashboardBackground(),
            SafeArea(child: DashboardViewBody()),
          ],
        ),
      ),
    );
  }
}
