import 'package:equatable/equatable.dart';

abstract class BaseEntity extends Equatable {
  const BaseEntity({required this.id});

  final String id;

  @override
  List<Object> get props => [id];
}