import 'package:flutter/material.dart';
import 'dart:math';

class GradientCircularIndicator extends StatelessWidget {
  final double width;
  final double height;
  final double strokeWidth;

  const GradientCircularIndicator({
    super.key,
    this.width = 27.5,
    this.height = 27.5,
    this.strokeWidth = 4.0
  
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: CustomPaint(
        painter: _GradientCircularPainter(
          strokeWidth: strokeWidth,
        ),
      ),
    );
  }
}

class _GradientCircularPainter extends CustomPainter {
  final double strokeWidth;

  _GradientCircularPainter({required this.strokeWidth});

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final gradient = SweepGradient(
      colors: const [
        Color(0xFFD8B770),
        Color(0xFFA97C22),
        Color(0xFFF4D788),
        Color(0xFFD8B770), // repeat for seamless loop
      ],
      startAngle: 0.0,
      endAngle: 2 * pi,
      tileMode: TileMode.clamp,
    );

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..shader = gradient.createShader(rect)
      ..strokeCap = StrokeCap.round;

    final center = size.center(Offset.zero);
    final radius = (size.width / 2) - strokeWidth / 2;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      2 * pi * 0.75, // 75% filled progress
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
