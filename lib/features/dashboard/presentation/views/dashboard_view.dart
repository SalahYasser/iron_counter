import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_sync/core/services/get_it_service.dart';
import 'package:training_sync/features/dashboard/presentation/manager/dashboard_cubit/dashboard_cubit.dart';
import 'package:training_sync/features/dashboard/presentation/views/widgets/dashboard_view_body.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  static const String routeName = '/dashboard';

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView>
    with TickerProviderStateMixin {

  late final DashboardCubit _dashboardCubit;

  @override
  void initState() {
    super.initState();
    _dashboardCubit = getIt<DashboardCubit>();
    _dashboardCubit.loadDashboard();
  }

  @override
  void dispose() {
    _dashboardCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _dashboardCubit,

      child: const Scaffold(
        extendBodyBehindAppBar: true,
        body: DashboardViewBody(),
      ),
    );
  }
}
