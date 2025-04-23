import 'package:elfakh/features/ranking/presentation/view/widgets/ranking_list.dart';
import 'package:flutter/material.dart';

class FriendsAmongFriends extends StatelessWidget {
  const FriendsAmongFriends({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: RankingList(rankingType: "الترتيب علي الأصدقاء",),
    );
  }
}