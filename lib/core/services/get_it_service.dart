import 'package:get_it/get_it.dart';
import 'package:iron_counter/features/onboarding/presentation/manager/onboarding_cubit.dart';
import 'package:iron_counter/features/splash/presentation/manager/cubit/splash_cubit.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Cubits
  getIt.registerFactory(() => SplashCubit());

  // getIt.registerFactory(() => OnboardingCubit());
  getIt.registerLazySingleton<OnboardingCubit>(() => OnboardingCubit());
}