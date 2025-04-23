import 'package:elfakh/core/widgets/back_ground.dart';
import 'package:flutter/material.dart';


class GameHomeBackGround extends StatelessWidget {
  const GameHomeBackGround({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        BackGround(),
        
        Center(
          child: Opacity(
            opacity: 0.48,
            child: SizedBox(
              width: 216.07, 
              height: 216.07,
              child: Image(
                image: AssetImage("assets/images/splashgame.png"),
                fit: BoxFit.contain, 
              ),
            ),
          ),
        ),
      ],
    );
  }
}
