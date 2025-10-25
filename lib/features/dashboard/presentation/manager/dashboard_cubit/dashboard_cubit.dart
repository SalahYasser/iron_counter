import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_sync/features/dashboard/domain/usecases/get_dashboard_data_usecase.dart';
import 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit(this.getDashboardDataUseCase) : super(DashboardInitial());

  final GetDashboardDataUseCase getDashboardDataUseCase;

  Future<void> loadDashboard() async {
    emit(DashboardLoading());
    await Future.delayed(const Duration(milliseconds: 200));

    final result = await getDashboardDataUseCase.call();

    result.fold(
      (failure) => emit(
        DashboardFailure(errMessage: failure.message ?? "Unknown error"),
      ),
      (categories) => emit(DashboardSuccessful(categories: categories)),
    );
  }
}
