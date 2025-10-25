import 'package:flutter/material.dart';
import 'package:training_sync/features/dashboard/presentation/views/widgets/dashboard_background.dart';
import 'package:training_sync/features/dashboard/presentation/views/widgets/dashboard_content.dart';
import 'package:training_sync/features/dashboard/presentation/views/widgets/dashboard_header.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        DashboardBackground(),
        SafeArea(
          child: Column(
            children: [
              DashboardHeader(),
              Expanded(child: DashboardContent()),
            ],
          ),
        ),
      ],
    );
  }
}
