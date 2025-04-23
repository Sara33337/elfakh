import 'package:elfakh/features/competitions/presentation/view/widgets/starting_competition_body.dart';
import 'package:flutter/material.dart';

class StartingCompetition extends StatelessWidget {
  const StartingCompetition({super.key , required this.screenTitle});
  final String screenTitle;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: StartingCompetitionBody(screenTitle: screenTitle ,),
    );
  }
}
