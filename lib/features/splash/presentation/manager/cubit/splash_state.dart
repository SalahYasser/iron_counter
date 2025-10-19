import 'package:equatable/equatable.dart';

class SplashState extends Equatable {
  const SplashState({
    this.scale = 0.5,
    this.opacity = 0.0,
    this.shouldNavigate = false,
    this.error,
  });

  final double scale;
  final double opacity;
  final bool shouldNavigate;
  final String? error;

  SplashState copyWith({
    double? scale,
    double? opacity,
    bool? shouldNavigate,
    String? error,
  }) {
    return SplashState(
      scale: scale ?? this.scale,
      opacity: opacity ?? this.opacity,
      shouldNavigate: shouldNavigate ?? this.shouldNavigate,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [scale, opacity, shouldNavigate, error];
}