import 'package:elfakh/core/widgets/bordered_text.dart';
import 'package:elfakh/core/widgets/profile_pic.dart';
import 'package:flutter/material.dart';

class UserInGame extends StatelessWidget {
  const UserInGame({
    super.key,
    required this.textDirection,
    this.showGift = false,
  });

  final TextDirection textDirection;
  final bool showGift;

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: textDirection,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
             ProfilePic(),
            if (showGift)
              const Positioned(
                top: -10,
                right: 24,
                child: Image(
                  image: AssetImage("assets/images/coloredGift.png"),
                ),
              ),
          ],
        ),
        const SizedBox(width: 2),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "نور ماجد",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.92,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              " ID : 198371",
              style: TextStyle(
                color: Colors.white,
                fontSize: 11.6,
                fontWeight: FontWeight.w400,
              ),
            ),
            BorderdText(
              text: "عدد النقاط : 0",
              fontSize: 11.6,
              fontColor: Color(0xFFFFD400),
            ),
          ],
        ),
      ],
    );
  }
}
