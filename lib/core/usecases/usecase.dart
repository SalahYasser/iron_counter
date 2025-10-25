import 'package:dartz/dartz.dart';
import 'package:training_sync/core/error/failure.dart';

// T = return type (e.g., List<Entity>, void)
// P = parameters type (e.g., String, Entity, NoParams)

abstract class UseCase<T, P> {
  Future<Either<Failure, T>> call([P? params]);
}

// Used for use cases that do not require any parameters

class NoParams {
  const NoParams();
}
