import 'package:elfakh/core/widgets/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseValue extends StatelessWidget {
  const ChooseValue({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.18,
      height: 210.33,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFF9DC8C), Color(0xFF836031)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(34.1),
      ),
      padding: const EdgeInsets.all(1.14), // thickness of the border
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFF97794), Color(0xFF623AA2)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(31), // inner radius = outer - padding
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: Offset(0, 3.92),
              blurRadius: 12.73,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 10.78,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BorderdText(
              text: "اختيار القيمة",
              fontSize: 23,
            ),
             Padding(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Minus button
                  SvgPicture.asset(
                    "assets/images/minus_icon.svg",
                    width: 70.58,
                    height: 47.44,
                  ),

                  // Value display
                  SizedBox(width: 5),
                  ValueBox(),
                  SizedBox(width: 5),

                  // Plus button
                  SvgPicture.asset(
                    "assets/images/plus_icon.svg",
                    width: 70.58,
                    height: 47.44,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ValueBox extends StatelessWidget {
  const ValueBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 211.75,
      height: 45.13,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
          ),
        ],
      ),
      child: Center(
        child: BorderdText(
          text: "250",
          fontSize: 25.5,
        ),
      ),
    );
  }
}
