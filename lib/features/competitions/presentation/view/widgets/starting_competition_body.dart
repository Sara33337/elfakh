import 'package:elfakh/core/widgets/back_ground.dart';
import 'package:elfakh/core/widgets/bordered_text.dart';
import 'package:elfakh/core/widgets/custom_circular_indicator.dart';
import 'package:elfakh/core/widgets/playercard.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartingCompetitionBody extends StatefulWidget {
  const StartingCompetitionBody({super.key , required this.screenTitle});
  final String screenTitle;

  @override
  State<StartingCompetitionBody> createState() =>
      _StartingCompetitionBodyState();
}

class _StartingCompetitionBodyState extends State<StartingCompetitionBody> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      GoRouter.of(context).push("/twoCompetitors");
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        BackGround(),
        Center(
          child: SingleChildScrollView(
            child: Padding(
              padding:
                  EdgeInsets.only(top: 68, left: 28, right: 28, bottom: 20),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  BorderdText(
                    text: widget.screenTitle,
                    fontSize: 27.83,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Stack(
                    children: [
                      Image(image: AssetImage("assets/images/winners.png")),
                      Positioned(
                        top: 60, // You can tweak this value
                        left: 0,
                        right: 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      PlayerCard(
                        name: "فهد طلال",
                        score: 200,
                      ),
                      PlayerCard(
                        name: "فهد طلال",
                        score: 200,
                      ),
                    ],
                  ),
                  SizedBox(height: 100),
                  Row(
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
                      SizedBox(
                        width: 10,
                      ),
                      GradientCircularIndicator(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
