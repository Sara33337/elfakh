
import 'package:elfakh/features/ranking/presentation/view/widgets/ranking_list.dart';
import 'package:flutter/material.dart';

class GenralRanking extends StatelessWidget {
  const GenralRanking({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RankingList(rankingType: "الترتيب العالمي",),
    );
  }
}

