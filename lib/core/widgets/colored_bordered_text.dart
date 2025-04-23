import 'package:flutter/material.dart';

class ColoredBorderdText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  const ColoredBorderdText({
    Key? key,
    required this.text,
    this.fontSize = 40.0,
    this.fontWeight = FontWeight.w700,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Border stroke
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontFamily: '29LT Bukra',
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 1.15
              ..color = const Color(0xFF888C99),
          ),
          textDirection: TextDirection.rtl,
        ),
      
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontFamily: '29LT Bukra',
            color: Colors.white,
            shadows: const [
              Shadow(
                offset: Offset(-2.29, 2.29),
                blurRadius: 0.69,
                color: Color(0xFF621876),
              ),
            ],
          ),
          textDirection: TextDirection.rtl,
        ),
      ],
    );
  }
}
