import 'package:elfakh/core/widgets/bordered_text.dart';
import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {
  const OrangeButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    double outerRadius = 13.95;
    double padding = 2.33;
    double innerRadius = outerRadius - padding;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 98.88,
        height: 41.28,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFF89400),
              Color(0xFFE44800),
            ],
          ),
          borderRadius: BorderRadius.circular(outerRadius),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFF89400),
                Color(0xFFE44800),
              ],
            ),
            borderRadius: BorderRadius.circular(innerRadius),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: Offset(0, 10.31),
                blurRadius: 3.77,
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.24),
                offset: Offset(0, 0.75),
                blurRadius: 1.51,
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                  left: 6,
                  child: Image.asset(
                    "assets/buttons3D/orange_ellips1.png",
                    width: 6.03,
                    height: 7.53,
                  )),

              Positioned(
                  left: 85,
                  child: Image.asset(
                    "assets/buttons3D/orange_ellips2.png",
                    width: 6.03,
                    height: 12.05,
                  )),

              Positioned(
                  bottom: 1,
                  left: 2,
                  child: Image.asset("assets/buttons3D/Frame 1.png")),
              // Centered Text
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BorderdText(
                      text: text,
                      fontSize: 12.16,
                    ),
                     Image.asset(
                      "assets/images/diamond.png",
                      width: 19.29,
                      height: 17.23,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
