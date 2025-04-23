import 'package:elfakh/core/widgets/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 42 , left: 33 , right: 33 , bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Row(
          children: [
            BorderdText(text: "10" , fontSize: 20.69,),
            Image.asset("assets/images/viewers.png")
          ],
        ),
        SvgPicture.asset("assets/images/setting_icon.svg" , width: 65.97, height: 43.96,)
      ],),
    );
  }
}