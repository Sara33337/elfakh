import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CloseIcon extends StatelessWidget {
  const CloseIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).pop();
        },
        child: SvgPicture.asset(
          "assets/images/close_icon.svg",
          width: 37,
          height: 37,
          placeholderBuilder: (BuildContext context) =>
              const CircularProgressIndicator(),
          semanticsLabel: "close icon",
        ),
      ),
    );
  }
}
