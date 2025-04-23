import 'dart:math';

import 'package:elfakh/core/widgets/back_ground.dart';
import 'package:elfakh/core/widgets/bordered_text.dart';
import 'package:elfakh/core/widgets/custom_circular_indicator.dart';
import 'package:elfakh/core/widgets/playercard.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FourCompetitorBody extends StatefulWidget {
  const FourCompetitorBody({super.key , required this.screenTitle});
  final String screenTitle;

  @override
  State<FourCompetitorBody> createState() => _FourCompetitorBodyState();
}

class _FourCompetitorBodyState extends State<FourCompetitorBody> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 4), () {
      GoRouter.of(context).push("/fourCompetitorsPlaying");
    });
  }

  final double radius = 320;

  final double angleStep = pi / 10;

  final players = const [
    PlayerCard(name: "فهد طلال", score: 100),
    PlayerCard(name: "سارة عبده", score: 100),
    PlayerCard(name: "محمد عبدالله", score: 100),
    PlayerCard(name: "فهد", score: 100),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackGround(),
         SingleChildScrollView(
          child: Center(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 68, left: 28, right: 28, bottom: 20),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  BorderdText(
                    text: widget.screenTitle,
                    fontSize: 27.83,
                  ),
                  const SizedBox(height: 30),
                  const Stack(
                    children: [
                      Image(image: AssetImage("assets/images/winners.png")),
                      Positioned(
                        top: 60,
                        left: 0,
                        right: 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("assets/images/money.png")),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              textDirection: TextDirection.rtl,
                              children: [
                                BorderdText(text: "المكسب:", fontSize: 27.98),
                                BorderdText(
                                  text: "500",
                                  fontSize: 27.98,
                                  fontColor: Color(0xFFFEEA6F),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 760,
          left: 0,
          right: 0,
          child: SizedBox(
            width: 364,
            height: 250,
            child: Stack(
              alignment: Alignment.center,
              children: List.generate(players.length, (index) {
                double angle =
                    -angleStep * (players.length - 1) / 2 + angleStep * index;
                double x = radius * sin(angle);
                double y = -radius * cos(angle); // arc facing downward

                return Transform.translate(
                  offset: Offset(x, y),
                  child: PlayerCard(
                    name: players[index].name,
                    score: players[index].score,
                  ),
                );
              }),
            ),
          ),
        ),
        const Positioned(
          bottom: 100,
          left: 0,
          right: 0,
          child: Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "جارى بدء اللعبة",
                style: TextStyle(
                  fontSize: 16.24,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: 10),
              GradientCircularIndicator(),
            ],
          ),
        ),
      ],
    );
  }
}
