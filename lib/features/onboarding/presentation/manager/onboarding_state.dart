part of 'onboarding_cubit.dart';


abstract class OnboardingState {
  const OnboardingState();
}

class OnboardingInitial extends OnboardingState {}

class OnboardingLoading extends OnboardingState {}

class OnboardingAnimate extends OnboardingState {}

class OnboardingNavigate extends OnboardingState {}

class OnboardingFailure extends OnboardingState {
  const OnboardingFailure(this.failure);

  final Failure failure;
}
