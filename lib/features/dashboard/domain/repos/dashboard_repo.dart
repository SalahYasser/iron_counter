import 'package:dartz/dartz.dart';
import 'package:training_sync/core/error/failure.dart';
import 'package:training_sync/features/dashboard/domain/entities/dashboard_entity.dart';

abstract class DashboardRepo {
  Future<Either<Failure, List<DashboardEntity>>> getDashboardCategories();
}
