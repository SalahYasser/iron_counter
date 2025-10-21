import 'dart:math';
import 'package:flutter/material.dart';
import 'package:iron_counter/core/constants/app_colors.dart';

class PurpleParticlePainter extends CustomPainter {
  PurpleParticlePainter()
      : particles = List.generate(25, (index) => PurpleParticle());

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

  final List<PurpleParticle> particles;

  @override
  void paint(Canvas canvas, Size size) {
    for (final particle in particles) {
      particle.update();
      particle.wrapAround(size);

      final paint = Paint()
        ..color = particle.color.withOpacity(particle.opacity)
        ..style = PaintingStyle.fill;

      canvas.drawCircle(Offset(particle.x, particle.y), particle.radius, paint);
    }
  }

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
    dx = (random.nextDouble() - 0.5) * 0.3;
    dy = (random.nextDouble() - 0.5) * 0.3;
    radius = random.nextDouble() * 2 + 1;
    opacity = random.nextDouble() * 0.15 + 0.05;
    speed = random.nextDouble() * 0.2 + 0.1;

    final purpleShades = [
      AppColors.kPurple1,
      AppColors.kPurple2,
      AppColors.kPurple4,
      AppColors.kPurple5,
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