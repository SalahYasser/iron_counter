import 'package:dartz/dartz.dart';
import 'package:training_sync/core/error/failure.dart';
import 'package:training_sync/core/usecases/usecase.dart';
import 'package:training_sync/features/dashboard/domain/entities/dashboard_entity.dart';
import 'package:training_sync/features/dashboard/domain/repos/dashboard_repo.dart';

class GetDashboardDataUseCase extends UseCase<List<DashboardEntity>, NoParams> {
  GetDashboardDataUseCase(this.dashboardRepo);

  final DashboardRepo dashboardRepo;

  @override
  Future<Either<Failure, List<DashboardEntity>>> call([NoParams? params]) async{
    return await dashboardRepo.getDashboardCategories();
  }
}
