import 'package:elfakh/core/widgets/back_ground.dart';
import 'package:elfakh/core/widgets/bordered_text.dart';
import 'package:elfakh/core/widgets/button.dart';
import 'package:elfakh/core/widgets/choose_value.dart';
import 'package:elfakh/core/widgets/close_icon.dart';
import 'package:elfakh/core/widgets/time_or_cards.dart';
import 'package:elfakh/features/competitions/presentation/view/widgets/numberOf_players.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChoosingNumberOfPlayers extends StatefulWidget {
  const ChoosingNumberOfPlayers(
      {super.key, required this.screenTitle,
       required this.twoCompetitrPath,
      required this.fourCompetitorsPath});
  final String screenTitle;
  final String twoCompetitrPath;
  final String fourCompetitorsPath;

  @override
  State<ChoosingNumberOfPlayers> createState() => _ChoosingNumberOfPlayers();
}

class _ChoosingNumberOfPlayers extends State<ChoosingNumberOfPlayers> {
  int selectedPlayers = 2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackGround(),
        SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 68, left: 28, right: 28, bottom: 20),
            child: Column(
              children: [
                const CloseIcon(),
                const SizedBox(height: 50),
                BorderdText(text: widget.screenTitle, fontSize: 27.83),
                const SizedBox(height: 70),

                /// 💡 Pass a callback to get selected players
                NumOfPlayers(
                  onSelected: (value) {
                    setState(() {
                      selectedPlayers = value;
                    });
                  },
                ),
                const SizedBox(height: 60),
                const ChooseValue(),
                const SizedBox(height: 30),
                const SizedBox(
                  width: 375.18,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    textDirection: TextDirection.rtl,
                    children: [
                      TimeOrCards(
                        width: 57.25,
                        timeORcards: "عدد البطاقات",
                        insideContainer: "30",
                      ),
                      TimeOrCards(
                        width: 96.43,
                        timeORcards: "الوقت",
                        insideContainer: "1 دقيقة",
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 90),

                GlassButton(
                  text: "ابدأ",
                  onTap: () {
                    if (selectedPlayers == 2) {
                      GoRouter.of(context).push(widget.twoCompetitrPath , extra: widget.screenTitle);
                    } else {
                      GoRouter.of(context).push(widget.fourCompetitorsPath , extra: widget.screenTitle);
                    }
                  },
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
