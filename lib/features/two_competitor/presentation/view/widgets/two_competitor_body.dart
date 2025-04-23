import 'package:elfakh/core/widgets/back_ground.dart';
import 'package:elfakh/core/widgets/bordered_text.dart';
import 'package:elfakh/core/widgets/congrates_dialog.dart';
import 'package:elfakh/core/widgets/number.dart';
import 'package:elfakh/core/widgets/user_in_game.dart';
import 'package:elfakh/core/widgets/winner_dialog.dart';
import 'package:elfakh/utilies/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class TwoCompetitorBody extends StatefulWidget {
  const TwoCompetitorBody({super.key});

  @override
  State<TwoCompetitorBody> createState() => _TwoCompetitorBodyState();
}

class _TwoCompetitorBodyState extends State<TwoCompetitorBody> {
  bool showWinners = false;
  bool showCongrats = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackGround(),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(9),
            child: Column(
              children: [
                const CustomAppBar(),
                const SizedBox(height: 10),
                const UserInGame(textDirection: TextDirection.rtl),
                const BorderdText(
                  text: "00:60",
                  fontSize: 37.39,
                ),
                const SizedBox(height: 20),
                Number(
                  onTap: () {
                    setState(() {
                      showWinners = true;
                    });
                  },
                ),
                const SizedBox(height: 15),
                const UserInGame(textDirection: TextDirection.ltr),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Image.asset("assets/images/smile.png"),
                    const SizedBox(width: 5),
                    Image.asset("assets/images/chat.png"),
                  ],
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
        if (showWinners)
          WinnersDialog(goNext: () {
            setState(() {
              showCongrats = true;
            });
          }),
        if (showCongrats)
          CongratesDialog(onClose: () {
            setState(() {
              showCongrats = false;
              showWinners = false;
            });
          })
      ],
    );
  }
}
