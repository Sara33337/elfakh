import 'package:elfakh/core/widgets/bordered_text.dart';
import 'package:flutter/material.dart';

class ColoredNumber extends StatelessWidget {
  const ColoredNumber({super.key });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      child: Container(
        width: 52.8,
        height: 49.92,

        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(2.88),
          gradient:
              LinearGradient(colors: [Color(0xFFDB6293), Color(0xFF8A3166)]),
        ),
        child: Center(
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
                  gradient:
              LinearGradient(colors: [Color(0xFFDB6293), Color(0xFF8A3166)]), borderRadius: BorderRadius.circular(2.88)),
            child: Center(
              child: BorderdText(
                text: "2",
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
