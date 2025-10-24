import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  const Failure([this.message]);

  final String? message;

  @override
  List<Object?> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure([super.message]);
}

class CacheFailure extends Failure {
  const CacheFailure([super.message]);
}

class InvalidInputFailure extends Failure {
  const InvalidInputFailure([super.message]);
}

class UnimplementedFailure extends Failure {
  const UnimplementedFailure([super.message]);
}
