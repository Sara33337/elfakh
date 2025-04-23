import 'package:flutter/material.dart';

class BorderdText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color fontColor;

  const BorderdText({
    Key? key,
    required this.text,
    this.fontSize = 40.0,
    this.fontWeight = FontWeight.w700,
    this.fontColor = Colors.white
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
              ..strokeWidth = 0.58
              ..color = const Color(0xFF3E3E3E),
          ),
          textDirection: TextDirection.rtl,
        ),

        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontFamily: '29LT Bukra',
            color: fontColor,
            shadows: [
              Shadow(
                offset: Offset(0, 1.16),
                color: Colors.black,
              ),
              Shadow(
                offset: Offset(0, 0.58),
                blurRadius: 2.95,
                color: Colors.black.withOpacity(0.8),
              ),
            ],
          ),
          textDirection: TextDirection.rtl,
        ),
      ],
    );
  }
}
