import 'package:elfakh/core/widgets/bordered_text.dart';
import 'package:flutter/material.dart';

class TimeOrCards extends StatelessWidget {
  const TimeOrCards(
      {super.key,
      required this.timeORcards,
      required this.insideContainer,
      required this.width});
  final String timeORcards;
  final String insideContainer;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        BorderdText(
          text: timeORcards,
          fontSize: 16,
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
            width: width,
            height: 35.16,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Color(0xFFF97794), Color(0xFF623AA2)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(18.62),
              border: Border.all(
                  color: Color(0xFFF8DB8B).withOpacity(0.25), width: 1.14),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    offset: Offset(0, 3.92),
                    blurRadius: 12.73),
              ],
            ),
            child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BorderdText(
                  text: insideContainer,
                  fontSize: 16,
                ),
                const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.white,
                )
              ],
            ))
      ],
    );
  }
}
