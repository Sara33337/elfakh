import 'package:elfakh/utilies/app_colors.dart';
import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  const BackGround({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand( 
      child: Stack(
        children: [
           Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
    

          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: AppColors.backGroundColor
                    .map((color) => color.withOpacity(0.9)) 
                    .toList(),
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
