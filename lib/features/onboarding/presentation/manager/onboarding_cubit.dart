import 'package:flutter/animation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iron_counter/core/error/failure.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());

  late AnimationController controller;
  late Animation<double> fadeIn;
  late Animation<double> scaleIn;

  void initializeAnimation(TickerProvider vsync) {
    try {
      emit(OnboardingLoading());

      controller = AnimationController(
        vsync: vsync,
        duration: const Duration(seconds: 2),
      );

      fadeIn = CurvedAnimation(parent: controller, curve: Curves.easeIn);

      scaleIn = Tween<double>(begin: 0.95, end: 1.0).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeOut),
      );

      controller.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          emit(OnboardingAnimate());
        }
      });

      controller.forward();
    } catch (e) {
      emit(OnboardingError(const Failure("Animation initialization failed")));
    }
  }

  void navigateToDashboard() {
    emit(OnboardingNavigate());
  }

  @override
  Future<void> close() {
    controller.dispose();
    return super.close();
  }
}
