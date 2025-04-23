import 'package:elfakh/features/four_competitors/presentation/view/widgets/four_scopertitors_body.dart';
import 'package:flutter/material.dart';

class FourCompetitorsScreen extends StatelessWidget {
  const FourCompetitorsScreen({super.key , required this.screenTitle});
  final String screenTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FourCompetitorBody(screenTitle: screenTitle,),
    );
  }
}
