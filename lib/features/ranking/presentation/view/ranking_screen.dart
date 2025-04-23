import 'package:elfakh/core/widgets/back_ground.dart';
import 'package:elfakh/core/widgets/bordered_text.dart';
import 'package:elfakh/core/widgets/close_icon.dart';
import 'package:elfakh/features/ranking/presentation/view/widgets/ranking_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RankingScreen extends StatelessWidget {
  const RankingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackGround(),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 68, left: 28, right: 28, bottom: 20),
              child: Column(
                children: [
                  const CloseIcon(),
                  const SizedBox(height: 35),
                  const BorderdText(
                    text: "الترتيب",
                    fontSize: 24,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  RankingContainer(
                    rankingTitle: "الترتيب العام على اللعبة",
                    onTap: () {
                      GoRouter.of(context).push("/generalRanking");
                    },
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  RankingContainer(
                    rankingTitle: "الترتيب على الأصدقاء ",
                    onTap: () {
                      GoRouter.of(context).push("/friendsRanking");
                    },
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  RankingContainer(
                    rankingTitle: "الترتيب على العب واكسب",
                    onTap: () {
                      GoRouter.of(context).push("/playAndWinRanking");
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
