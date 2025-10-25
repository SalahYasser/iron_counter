import 'package:flutter/material.dart';
import 'package:training_sync/core/entities/base_entity.dart';

class DashboardEntity extends BaseEntity {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final List<Color> gradientColors;

  const DashboardEntity({
    required super.id,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.gradientColors,
  });

  @override
  List<Object> get props => [id, title, subtitle, icon, color, gradientColors];
}
