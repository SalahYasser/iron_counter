import 'package:training_sync/features/dashboard/domain/entities/dashboard_entity.dart';

class DashboardModel extends DashboardEntity {
  const DashboardModel({
    required super.id,
    required super.title,
    required super.subtitle,
    required super.icon,
    required super.color,
    required super.gradientColors,
  });
}
