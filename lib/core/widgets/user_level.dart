import 'package:elfakh/core/widgets/bordered_text.dart';
import 'package:elfakh/core/widgets/profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class userLevel extends StatelessWidget {
  const userLevel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
             ProfilePic(
              borderHeight: 90,
              borderWidth: 81.12,
        
             ),
            Positioned(
              bottom: 0,
              right: 20,
              child: Container(
                width: 43.33,
                height: 19.39,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Color(0xFF24252A), Color(0xFF3E4144)]),
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: Text(
                    "LV. 3",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 8.83,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 54,
              left: 40,
              child: SvgPicture.asset("assets/images/Medal bronze.svg"),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "فد الطلال",
          style: TextStyle(fontSize: 15.62, fontWeight: FontWeight.w700),
        ),
        const BorderdText(
          text: "النقاط : 0",
          fontSize: 19.88,
        )
      ],
    );
  }
}
