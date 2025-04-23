import 'package:elfakh/core/widgets/bordered_text.dart';
import 'package:elfakh/core/widgets/profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RankingContainer extends StatelessWidget {
  const RankingContainer({super.key, required this.rankingTitle, required this.onTap});
  final String rankingTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 354,
        height: 198,
        child: Column(
          children: [
            Container(
              height: 29,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFF5D5D77), Color(0xFF909B66)])),
              child: Center(
                  child: BorderdText(
                text: rankingTitle,
                fontSize: 11,
              )),
            ),
            Container(
              height: 169,
              width: 354,
              child: Stack(
                children: [
                  // Background with opacity
                  Opacity(
                    opacity: 0.3,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        image: DecorationImage(
                          image:
                              AssetImage('assets/images/rankingBackGround.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                      left: 75,
                      top: 35,
                      child: Column(
                        children: [
                          ProfilePic(
                            borderHeight: 38.37,
                            borderWidth: 35.11,
                            imageWidth: 30,
                            imageheight: 30,
                          ),
                          const Text(
                            "sara",
                            style: TextStyle(
                                fontSize: 6.11,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          const Text(
                            "ID : 8042492",
                            style: TextStyle(
                                fontSize: 4.89,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )
                        ],
                      )),

                  Positioned(
                      left: 150,
                      top: 10,
                      child: Column(
                        children: [
                          ProfilePic(
                            borderHeight: 48.37,
                            borderWidth: 45.11,
                            imageWidth: 40,
                            imageheight: 40,
                          ),
                          const Text(
                            "sara",
                            style: TextStyle(
                                fontSize: 7.34,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          const Text(
                            "ID : 8042492",
                            style: TextStyle(
                                fontSize: 6.11,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )
                        ],
                      )),

                  Positioned(
                      left: 240,
                      top: 35,
                      child: Column(
                        children: [
                          ProfilePic(
                            borderHeight: 38.37,
                            borderWidth: 35.11,
                            imageWidth: 30,
                            imageheight: 30,
                          ),
                          const Text(
                            "sara",
                            style: TextStyle(
                                fontSize: 6.11,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          const Text(
                            "ID : 8042492",
                            style: TextStyle(
                                fontSize: 4.89,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )
                        ],
                      )),

                  // Proper use of Positioned
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: SvgPicture.asset(
                      "assets/images/rankingborder.svg",
                      width: 234.16,
                      height: 77.77,
                    ),
                  ),

                  Positioned(
                    bottom: 27,
                    left: 0,
                    right: 0,
                    child: SvgPicture.asset("assets/images/golden_cup.svg",
                        width: 67.78, height: 47.68),
                  ),

                  const Positioned(
                      bottom: 27,
                      left: 90,
                      right: 0,
                      child: Text(
                        "3",
                        style: TextStyle(
                            fontSize: 19.56,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )),

                  const Positioned(
                      bottom: 27,
                      right: 90,
                      child: Text(
                        "2",
                        style: TextStyle(
                            fontSize: 19.56,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
