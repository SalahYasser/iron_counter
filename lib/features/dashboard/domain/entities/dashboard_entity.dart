import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class DashboardEntity extends Equatable {
  const DashboardEntity({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.gradientColors,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final List<Color> gradientColors;

  @override
  List<Object?> get props => [title, subtitle, icon, color, gradientColors];
}
