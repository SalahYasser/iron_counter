import 'dart:async';
import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:iron_counter/features/splash/presentation/manager/cubit/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState());

  Timer? _animationTimer;
  Timer? _navigationTimer;
  int _elapsedMilliseconds = 0;

  static const int _totalAnimationDuration = 3000; // 3 seconds
  // static const int _totalSplashDuration = 5000; // 5 seconds

  void startSplashAnimation() {
    _startAnimation();
    _startNavigationTimer();
  }

  void _startAnimation() {
    const frameRate = 60; // 60 FPS
    final frameDuration = Duration(milliseconds: 1000 ~/ frameRate);

    _animationTimer = Timer.periodic(frameDuration, (timer) {
      _elapsedMilliseconds += (1000 ~/ frameRate);

      final progress = _elapsedMilliseconds / _totalAnimationDuration;

      if (progress >= 1.0) {
        _animationTimer?.cancel();
        emit(state.copyWith(scale: 1.0, opacity: 1.0));
      } else {
        final scale = _calculateScale(progress);
        final opacity = _calculateOpacity(progress);
        emit(state.copyWith(scale: scale, opacity: opacity));
      }
    });
  }

  double _calculateScale(double progress) {
    if (progress <= 0.6) {
      // Elastic out curve for scale animation (0.0 to 0.6 interval)
      final scaledProgress = progress / 0.6;
      return 0.5 + (0.5 * _elasticOut(scaledProgress));
    }
    return 1.0;
  }

  double _calculateOpacity(double progress) {
    if (progress >= 0.4) {
      // Ease in curve for opacity animation (0.4 to 1.0 interval)
      final scaledProgress = (progress - 0.4) / 0.6;
      return _easeIn(scaledProgress);
    }
    return 0.0;
  }

  double _elasticOut(double x) {
    return pow(2, -10 * x) * sin((x - 0.075) * (2 * pi) / 0.3) + 1;
  }

  double _easeIn(double x) {
    return x * x;
  }

  void _startNavigationTimer() {
    _navigationTimer = Timer(
      const Duration(seconds: 4),
          () {
        emit(state.copyWith(shouldNavigate: true));
      },
    );
  }

  void skipSplash() {
    _animationTimer?.cancel();
    _navigationTimer?.cancel();
    emit(state.copyWith(scale: 1.0, opacity: 1.0, shouldNavigate: true));
  }

  @override
  Future<void> close() {
    _animationTimer?.cancel();
    _navigationTimer?.cancel();
    return super.close();
  }
}