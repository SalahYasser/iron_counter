import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iron_counter/core/constants/app_colors.dart';
import 'package:iron_counter/core/constants/app_strings.dart';
import 'package:iron_counter/core/widgets/gradient_text.dart';
import 'package:iron_counter/features/onboarding/presentation/views/on_boarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  static const String routeName = '/splash';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;
  late Animation<Color?> _backgroundColorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.6, curve: Curves.elasticOut),
      ),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.4, 1.0, curve: Curves.easeIn),
      ),
    );

    _backgroundColorAnimation = ColorTween(
      begin: AppColors.test6, // Deep purple
      end: AppColors.test5, // Medium purple
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.forward();
    _navigateToNext();
  }

  void _navigateToNext() async {
    await Future.delayed(const Duration(seconds: 4));
    if (mounted) {
      Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                _backgroundColorAnimation.value!,
                _backgroundColorAnimation.value!.withOpacity(0.9),
              ],
            ),
          ),
          child: child,
        );
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            // Purple Particle Background
            Positioned.fill(
              child: CustomPaint(painter: PurpleParticlePainter()),
            ),

            // Main Content
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Animated Logo with Purple Gradient
                  AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) {
                      return Transform.scale(
                        scale: _scaleAnimation.value,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                AppColors.test2,
                                AppColors.test3,
                                AppColors.test4,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.test2.withOpacity(0.5),
                                blurRadius: 20,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                          child: Icon(
                            FontAwesomeIcons.dumbbell,
                            color: AppColors.kTextPrimary,
                            size: 36,
                          ),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 40),

                  // App Name with Purple Gradient
                  AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) {
                      return Opacity(
                        opacity: _fadeAnimation.value,
                        child: Column(
                          children: [
                            GradientText(
                              text: AppStrings.firstAppName,
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 4,
                              ),
                              gradient: LinearGradient(
                                colors: [
                                  AppColors.test0,
                                  AppColors.test1,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            GradientText(
                              text: AppStrings.lastAppName,
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 4,
                              ),
                              gradient: LinearGradient(
                                colors: [
                                  AppColors.test2,
                                  AppColors.test3,
                                  AppColors.test4,
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 20),

                  // Loading Indicator with Purple
                  AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) {
                      return Opacity(
                        opacity: _fadeAnimation.value,
                        child: _buildLoadingIndicator(),
                      );
                    },
                  ),
                ],
              ),
            ),

            // Version Info
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Opacity(
                    opacity: _fadeAnimation.value,
                    child: Column(
                      children: [
                        Text(
                          AppStrings.splashTaglineBottom,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Version 1.0.0',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoadingIndicator() {
    return Column(
      children: [
        SizedBox(
          width: 100,
          child: LinearProgressIndicator(
            backgroundColor: Colors.white.withOpacity(0.3),
            valueColor: AlwaysStoppedAnimation<Color>(
              AppColors.test1.withOpacity(0.8), // Purple accent
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          AppStrings.splashTagline,
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class PurpleParticlePainter extends CustomPainter {
  final List<PurpleParticle> particles;

  PurpleParticlePainter()
    : particles = List.generate(25, (index) => PurpleParticle());

  @override
  void paint(Canvas canvas, Size size) {
    // Update and draw particles
    for (final particle in particles) {
      particle.update();
      particle.wrapAround(size);

      final paint = Paint()
        ..color = particle.color.withOpacity(particle.opacity)
        ..style = PaintingStyle.fill;

      canvas.drawCircle(Offset(particle.x, particle.y), particle.radius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class PurpleParticle {
  late double x;
  late double y;
  late double dx;
  late double dy;
  late double radius;
  late double opacity;
  late double speed;
  late Color color;

  PurpleParticle() {
    final random = Random();
    x = random.nextDouble() * 400;
    y = random.nextDouble() * 800;
    dx = (random.nextDouble() - 0.5) * 0.3; // Slower movement
    dy = (random.nextDouble() - 0.5) * 0.3;
    radius = random.nextDouble() * 2 + 1; // Slightly larger particles
    opacity = random.nextDouble() * 0.15 + 0.05;
    speed = random.nextDouble() * 0.2 + 0.1; // Slower speed

    // Random purple shades
    final purpleShades = [
      AppColors.test0, // Deep purple
      AppColors.test1, // Deep purple
      AppColors.test2, // Deep purple
      AppColors.test3, // Deep purple
    ];
    color = purpleShades[random.nextInt(purpleShades.length)];
  }

  void update() {
    x += dx * speed;
    y += dy * speed;
  }

  void wrapAround(Size size) {
    if (x < 0) x = size.width;
    if (x > size.width) x = 0;
    if (y < 0) y = size.height;
    if (y > size.height) y = 0;
  }
}
