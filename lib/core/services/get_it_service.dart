import 'package:get_it/get_it.dart';
import 'package:training_sync/features/dashboard/data/datasources/dashboard_datasource.dart';
import 'package:training_sync/features/dashboard/data/repos/dashboard_repo_impl.dart';
import 'package:training_sync/features/dashboard/domain/repos/dashboard_repo.dart';
import 'package:training_sync/features/dashboard/domain/usecases/get_dashboard_data_usecase.dart';
import 'package:training_sync/features/dashboard/presentation/manager/dashboard_cubit/dashboard_cubit.dart';
import 'package:training_sync/features/onboarding/presentation/manager/onboarding_cubit.dart';
import 'package:training_sync/features/splash/presentation/manager/cubit/splash_cubit.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Cubits
  getIt.registerFactory(() => SplashCubit());

  // getIt.registerFactory(() => OnboardingCubit());
  getIt.registerLazySingleton<OnboardingCubit>(() => OnboardingCubit());

  // 🧩 Data
  getIt.registerLazySingleton<DashboardDataSource>(() => DashboardLocalDataSource());
  getIt.registerLazySingleton<DashboardRepo>(
          () => DashboardRepoImpl(getIt<DashboardDataSource>()));

  // 🧠 Domain
  getIt.registerLazySingleton<GetDashboardDataUseCase>(
          () => GetDashboardDataUseCase(getIt<DashboardRepo>()));

  // 🎯 Presentation
  getIt.registerFactory(() => DashboardCubit(getIt<GetDashboardDataUseCase>()));

}