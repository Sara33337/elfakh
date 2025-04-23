
import 'package:elfakh/core/widgets/user_level.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:elfakh/core/widgets/button.dart';

class CongratesDialog extends StatelessWidget {
  final VoidCallback onClose;

  const CongratesDialog({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          color: Colors.transparent,
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
                  image: const DecorationImage(
                    image: AssetImage("assets/images/congratesBackground.png"),
                  ),
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
                        SizedBox(height: 140),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [userLevel(), userLevel()],
                        ),
                      ],
                    ),
                    GlassButton(
                      text: "رجوع",
                      onTap: onClose,
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
                    "assets/images/congrates.svg",
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
