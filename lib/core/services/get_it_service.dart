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
  // ==== Splash Feature ====
  getIt.registerFactory<SplashCubit>(() => SplashCubit());

  // ==== Onboarding Feature ====
  getIt.registerLazySingleton<OnboardingCubit>(() => OnboardingCubit());

  // ==== Dashboard Feature ====

  // Data source
  getIt.registerLazySingleton<DashboardDataSource>(
    () => DashboardLocalDataSource(),
  );

  // Repo
  getIt.registerLazySingleton<DashboardRepo>(
    () => DashboardRepoImpl(getIt<DashboardDataSource>()),
  );

  // Use case
  getIt.registerLazySingleton<GetDashboardDataUseCase>(
    () => GetDashboardDataUseCase(getIt<DashboardRepo>()),
  );

  // Cubit
  getIt.registerFactory<DashboardCubit>(
    () => DashboardCubit(getIt<GetDashboardDataUseCase>()),
  );
}