// import 'package:dartz/dartz.dart';
// import 'package:training_sync/core/error/failure.dart';
// import 'package:training_sync/features/dashboard/data/datasources/dashboard_datasource.dart';
// import 'package:training_sync/features/dashboard/domain/entities/dashboard_entity.dart';
// import 'package:training_sync/features/dashboard/domain/repos/dashboard_repo.dart';
//
// class DashboardRepoImpl implements DashboardRepo {
//   DashboardRepoImpl(this.dashboardDataSource);
//
//   final DashboardDataSource dashboardDataSource;
//
//   @override
//   Future<Either<Failure, List<DashboardEntity>>> getDashboardData() async {
//     try {
//       final result = await dashboardDataSource.getDashboardItems();
//       return Right(result);
//     } catch (e) {
//       return Left(Failure(e.toString()));
//     }
//   }
// }




// =============================================================================



import 'package:dartz/dartz.dart';
import 'package:training_sync/core/error/failure.dart';
import 'package:training_sync/features/dashboard/data/datasources/dashboard_datasource.dart';
import 'package:training_sync/features/dashboard/domain/entities/dashboard_entity.dart';
import 'package:training_sync/features/dashboard/domain/repos/dashboard_repo.dart';

class DashboardRepoImpl implements DashboardRepo {
  DashboardRepoImpl(this.dashboardDataSource);

  final DashboardDataSource dashboardDataSource;

  @override
  Future<Either<Failure, List<DashboardEntity>>> getDashboardCategories() async {
    try {
      final categories = await dashboardDataSource.fetchCategories();

      return Right(categories);

    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
