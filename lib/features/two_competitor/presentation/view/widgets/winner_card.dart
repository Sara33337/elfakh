import 'package:elfakh/core/widgets/bordered_text.dart';
import 'package:elfakh/core/widgets/user_in_game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WinnerCard extends StatelessWidget {
  const WinnerCard({
    super.key,
    required this.winnerRank
  });
  final String winnerRank;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 352.25,
        height: 70,
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Color(0xFFe9e2d5),
                Color(0xFFe9e2d5),
              
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            borderRadius: BorderRadius.circular(5.45),
            boxShadow: [
              BoxShadow(
                  blurRadius: 15.59, color: Colors.black.withOpacity(0.53)),
              BoxShadow(
                  blurRadius: 6.87,
                  color: Color(0xFF404F7E63).withOpacity(0.39))
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            textDirection: TextDirection.rtl,
            children: [
              SvgPicture.asset(winnerRank),
              UserInGame(textDirection: TextDirection.rtl, showGift: false,),
              const Row(
                textDirection: TextDirection.rtl,
                children: [
                  Text(
                    " :عدد النقاط",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 14.13),
                  ),
                  BorderdText(
                    text: "20",
                    fontSize: 14,
                    fontColor: Color(0xFFFFD400),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
