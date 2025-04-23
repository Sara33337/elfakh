
import 'package:elfakh/core/widgets/bordered_text.dart';
import 'package:elfakh/core/widgets/profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlayerCard extends StatelessWidget {
  const PlayerCard({super.key, required this.name, required this.score});
  final String name;
  final int score;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    width: 160, 
    height: 200,
    child: Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 50,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/banner.svg",
                width: 160,
                height: 150,
                fit: BoxFit.cover,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 13.74,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    children: [
                      BorderdText(
                        text: score.toString(),
                        fontSize: 15.94,
                      ),
                      Image(image: AssetImage("assets/images/Coin.png"))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
         Positioned(
          top: 0,
          child: ProfilePic(),
        ),
      ],
    ),
  );
  }
}
