import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_sync/core/services/get_it_service.dart';
import 'package:training_sync/features/dashboard/presentation/views/dashboard_view.dart';
import 'package:training_sync/features/onboarding/presentation/manager/onboarding_cubit.dart';
import 'package:training_sync/features/onboarding/presentation/views/widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  static const String routeName = '/onboarding';

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView>
    with TickerProviderStateMixin {

  late final OnboardingCubit onboardingCubit;

  @override
  void initState() {
    super.initState();
    onboardingCubit = getIt<OnboardingCubit>();
    onboardingCubit.initializeAnimation(this);
  }

  @override
  void dispose() {
    onboardingCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnboardingCubit, OnboardingState>(
      bloc: onboardingCubit,

      listener: (context, state) {
        if (state is OnboardingNavigate) {
          Navigator.pushReplacementNamed(context, DashboardView.routeName);

        } else if (state is OnboardingFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.failure.message ?? "Unknown error")),
          );
        }

      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: OnBoardingViewBody(onboardingCubit: onboardingCubit),
          ),
        );
      },
    );
  }
}
