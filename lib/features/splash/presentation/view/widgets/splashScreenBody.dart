import 'package:elfakh/core/widgets/back_ground.dart';
import 'package:elfakh/core/widgets/colored_bordered_text.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({
    super.key,
  });

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  bool _showGif = false;

  @override
  void initState() {
    super.initState();
    transition();
  }

  Future<void> transition() async {
  try {
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      _showGif = true;
    });

    await Future.delayed(const Duration(seconds: 5));
    if (!mounted) return;
    GoRouter.of(context).push("/bottomNavBar");
  } catch (e, s) {
    print("Splash Error: $e\n$s");
  }
}


  @override
  Widget build(BuildContext context) {
  return Stack(
    children: [
      const BackGround(),

    
      // if (_showGif)
      //   Container(
      //     color: Colors.black.withOpacity(0.59), // Adjust the opacity to your liking
      //   ),

      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 215,
              height: 215,
              child: Image.asset("assets/images/splashgame.png"),
            ),
            ColoredBorderdText(
              text: 'لعبة الفخ',
              fontSize: 36.67,
            ),

            if (_showGif)
              Container(
                alignment: Alignment.bottomCenter,
                width: 183,
                height: 183,
                child: Image.asset("assets/images/numbers.gif"),
              ),
          ],
        ),
      ),
    ],
  );
}

}
