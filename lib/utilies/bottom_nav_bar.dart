import 'package:flutter/material.dart';
import 'package:elfakh/core/widgets/bordered_text.dart';
import 'package:elfakh/features/game_home/presentation/view/game_home.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 2;

  final List<Widget> _screens = const [
    Center(child: Text("الاصدقاء", style: TextStyle(fontSize: 24))),
    Center(child: Text("الغرف", style: TextStyle(fontSize: 24))),
    GameHomeScreen(),
    Center(child: Text("الهدايا", style: TextStyle(fontSize: 24))),
  ];

  List<Map<String, dynamic>> navItems = [
    {
      'icon': 'assets/images/friends.png',
      'label': 'الأصدقاء',
    },
    {
      'icon': 'assets/images/rooms.png',
      'label': 'الغرف',
    },
    {
      'icon': 'assets/images/game.png',
      'label': 'اللعبة',
    },
    {
      'icon': 'assets/images/gift.png',
      'label': 'الهدايا',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[selectedIndex], // Display the selected screen
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF223762), Color(0xFF0A5695)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            boxShadow: [
              BoxShadow(blurRadius: 4, color: Colors.white.withOpacity(0.59)),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(navItems.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index; // Update the selected index
                  });
                },
                child: SizedBox(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      Image.asset(
                        navItems[index]['icon'],
                        height: 50,
                        width: 50,

                      ),
                      const SizedBox(height: 3),
                      BorderdText(text: navItems[index]['label'], fontSize: 16),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
