import 'package:equatable/equatable.dart';
import 'package:iron_counter/core/error/failure.dart';

abstract class DashboardState extends Equatable {
  const DashboardState();

  @override
  List<Object?> get props => [];
}

class DashboardInitial extends DashboardState {}

class DashboardLoading extends DashboardState {}

class DashboardLoaded extends DashboardState {}

class DashboardError extends DashboardState {
  final Failure failure;
  const DashboardError(this.failure);

  @override
  List<Object?> get props => [failure];
}
