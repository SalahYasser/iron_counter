import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'dashboard_state.dart';
import 'package:iron_counter/core/error/failure.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardInitial());

  Future<void> loadDashboardData() async {
    emit(DashboardLoading());
    await Future.delayed(const Duration(seconds: 1));

    try {
      // Simulate success — replace with actual data fetching later
      emit(DashboardLoaded());
    } catch (e) {
      emit(DashboardError(const Failure('Failed to load dashboard')));
    }
  }
}
