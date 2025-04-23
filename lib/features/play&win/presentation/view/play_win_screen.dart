import 'package:elfakh/features/competitions/presentation/view/widgets/chossing_players_num.dart';
import 'package:flutter/material.dart';

class PlayAndWinScreen extends StatelessWidget {
  const PlayAndWinScreen({super.key , required this.screenTitle});
  final String screenTitle;

  @override
  build(BuildContext context) {
    return  Scaffold(
      body: ChoosingNumberOfPlayers(
        screenTitle: screenTitle,
        twoCompetitrPath: "/startingCompetition",
        fourCompetitorsPath: "/fourCompetitors",
      ),
    );
  }
}
