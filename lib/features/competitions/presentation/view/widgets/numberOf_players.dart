import 'package:elfakh/core/widgets/bordered_text.dart';
import 'package:flutter/material.dart';

class NumOfPlayers extends StatefulWidget {
  final ValueChanged<int> onSelected;

  const NumOfPlayers({super.key, required this.onSelected});

  @override
  State<NumOfPlayers> createState() => _NumOfPlayersState();
}

class _NumOfPlayersState extends State<NumOfPlayers> {
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 361.54,
      height: 67.62,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFFFC3C3), Color(0xFFBE6B6D)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(67.62),
      ),
      padding: const EdgeInsets.all(1.14),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFF97794), Color(0xFF623AA2)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(66.48),
          border: Border.all(color: Color(0xFFFFC3C3)),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.25), blurRadius: 8.3),
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: Offset(0, 3.92),
              blurRadius: 8.3,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 4;
                });
                widget.onSelected(4);
              },
              child: BorderdText(
                text: "4 لاعبون",
                fontSize: 22,
                fontColor: selectedIndex == 4
                    ? Colors.white
                    : Colors.white.withOpacity(0.5),
              ),
            ),
            Container(
              width: 1,
              height: 40,
              color: const Color(0xFFFFC3C3),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
                widget.onSelected(2);
              },
              child: BorderdText(
                text: "2 لاعبون",
                fontSize: 22,
                fontColor: selectedIndex == 2
                    ? Colors.white
                    : Colors.white.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
