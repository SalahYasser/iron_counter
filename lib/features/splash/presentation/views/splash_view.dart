import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_sync/features/onboarding/presentation/views/on_boarding_view.dart';
import 'package:training_sync/features/splash/presentation/manager/cubit/splash_cubit.dart';
import 'package:training_sync/features/splash/presentation/manager/cubit/splash_state.dart';
import 'package:training_sync/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  static const String routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..startSplashAnimation(),
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state.shouldNavigate) {
            Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
          }
        },
        child: const Scaffold(
          body: SplashViewBody(),
        ),
      ),
    );
  }
}