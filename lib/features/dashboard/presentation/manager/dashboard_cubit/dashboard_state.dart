import 'package:equatable/equatable.dart';
import 'package:training_sync/features/dashboard/domain/entities/dashboard_entity.dart';

abstract class DashboardState extends Equatable {
  @override
  List<Object?> get props => [];
}

class DashboardInitial extends DashboardState {}

class DashboardLoading extends DashboardState {}

class DashboardSuccessful extends DashboardState {
  DashboardSuccessful({required this.categories});

  final List<DashboardEntity> categories;

  @override
  List<Object?> get props => [categories];
}

class DashboardFailure extends DashboardState {
  DashboardFailure({required this.errMessage});

  final String errMessage;
  
  @override
  List<Object?> get props => [errMessage];
}
