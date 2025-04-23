import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  ProfilePic({super.key, this.imageWidth = 60, this.imageheight = 60,
  this.borderHeight = 69.93,
  this.borderWidth = 64});
  final double imageWidth;
  final double imageheight;
  final double borderWidth;
  final double borderHeight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipOval(
          child: SizedBox(
            width: imageWidth, // smaller than the border
            height: imageheight,
            child: Image.asset(
              "assets/images/person.png",
              fit: BoxFit.cover, // fill the circle correctly
            ),
          ),
        ),
        SizedBox(
          width: borderWidth,
            height: borderHeight,
          child: Image.asset(
            "assets/images/userborder.png",
            
          ),
        ),
      ],
    );
  }
}
