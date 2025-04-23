import 'package:flutter/material.dart';
import 'package:elfakh/core/widgets/bordered_text.dart';

class Number extends StatelessWidget {
  const Number({super.key , required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final itemWidth = (MediaQuery.of(context).size.width - 16 * 4) / 5;
    return Wrap(
      runSpacing: 1,
      children: List.generate(40, (index) {
        final number = index + 1;
        return GestureDetector(
          onTap: onTap,
          child: Container(
            width: itemWidth, // Set the width of each item to fit 5 in a row
            child: Stack(
              alignment: Alignment.center, // Center text inside the image
              children: [
                const Image(
                  image: AssetImage("assets/images/Rectangle 237.png"),
                ),
                BorderdText(
                  text: number.toString(),
                  fontSize: 27.93,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
