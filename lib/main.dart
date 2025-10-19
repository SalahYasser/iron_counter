import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_counter/core/helper_functions/on_generate_routes.dart';
import 'package:iron_counter/core/theme/app_theme.dart';
import 'package:iron_counter/features/splash/presentation/views/splash_view.dart';

import 'core/services/get_it_service.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await setupGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: AppTheme.darkTheme,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: onGenerateRoutes,
          initialRoute: SplashView.routeName,
        );
      },
    );
  }
}
