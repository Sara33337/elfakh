import 'package:elfakh/core/widgets/bordered_text.dart';
import 'package:flutter/material.dart';

class GlassButton extends StatelessWidget {
  const GlassButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final double outerRadius = 18.08;
    final double padding = 1.5;
    final double innerRadius = outerRadius - padding;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 188.36,
        height: 59.62,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFF9DC8C), 
              Color(0xFF836031), 
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
                Color(0xFFF97794), 
                Color(0xFF623AA2), 
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
                bottom: 45,
                left: 8,
                child: Image.asset("assets/buttons3D/Ellipse 4.png", width: 6.03,
                height: 7.53,)),

                  Positioned(
                bottom: 43,
                left: 170,
                child: Image.asset("assets/buttons3D/Ellipse 3.png", width: 6.03,
                height: 12.05,)),

                
              
            
              Positioned(
                bottom: 1,
                left: 2,
                child: Image.asset("assets/buttons3D/Union.png")),
              // Centered Text
              Center(
                child: BorderdText(
                  text: text,
                  fontSize: 22.74,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
