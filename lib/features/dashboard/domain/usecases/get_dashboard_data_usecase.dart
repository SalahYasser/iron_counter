import 'package:dartz/dartz.dart';
import 'package:training_sync/core/error/failure.dart';
import 'package:training_sync/features/dashboard/domain/entities/dashboard_entity.dart';
import 'package:training_sync/features/dashboard/domain/repos/dashboard_repo.dart';

class GetDashboardDataUseCase {
  GetDashboardDataUseCase(this.dashboardRepo);

  final DashboardRepo dashboardRepo;

  Future<Either<Failure, List<DashboardEntity>>> call() async {
    return await dashboardRepo.getDashboardCategories();
  }
}
