import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:elfakh/features/two_competitor/presentation/view/widgets/winner_card.dart';
import 'package:elfakh/core/widgets/button.dart';

class WinnersDialog extends StatelessWidget {
  final VoidCallback goNext;

  const WinnersDialog({super.key, required this.goNext});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Semi-transparent black layer
        Container(
          color: Color(0xFF5C5C5C).withOpacity(0.60),
        ),
        Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 382.1,
                height: 495.44,
                padding: const EdgeInsets.only(
                    top: 60, left: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFEFF),
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [
                        SizedBox(height: 30),
                        WinnerCard(winnerRank: "assets/images/firstwinner.svg"),
                        WinnerCard(
                            winnerRank: "assets/images/second_winner.svg"),
                      ],
                    ),
                    // Button at the bottom
                    GlassButton(
                      text: "التالي",
                      onTap: goNext,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -150,
                left: 0,
                right: 0,
                child: Center(
                  child: SvgPicture.asset(
                    "assets/images/winner.svg",
                    width: 300,
                    height: 214,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
