import 'package:elfakh/features/competitions/presentation/view/widgets/chossing_players_num.dart';
import 'package:flutter/material.dart';

class CompetitionsScreen extends StatelessWidget {
  final String screenTitle;

  const CompetitionsScreen({super.key, required this.screenTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChoosingNumberOfPlayers(
        screenTitle: screenTitle,
        twoCompetitrPath: "/startingCompetition",
        fourCompetitorsPath: "/fourCompetitors",
      ),
    );
  }
}
