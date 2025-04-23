import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlayCategory extends StatelessWidget {
  const PlayCategory(
      {super.key,
      required this.image,
      required this.label,
      required this.icon,
      required this.onTap});

  final String image;
  final String label;
  final String icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
           SvgPicture.asset(
              image,
              width: 160,
              height: 160,
              placeholderBuilder: (BuildContext context) =>
                  const CircularProgressIndicator(),
              semanticsLabel: label,
            ),
        
          Positioned(
            bottom: 50,
            right: 30,
            child: Image.asset(
              icon,
              width: 96,
              height: 96,
            ),
          ),
        ],
      ),
    );
  }
}
