
import 'package:elfakh/core/widgets/bordered_text.dart';
import 'package:flutter/material.dart';

class Subscription extends StatelessWidget {
  const Subscription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 317.13,
        height: 71,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF85DE9D).withOpacity(0.53),
              Color(0xFFAC0D73).withOpacity(0.47)
            ],
          ),
          borderRadius: BorderRadius.circular(
              9.3), // optional matching radius
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            textDirection: TextDirection.rtl,
            children: [
              BorderdText(
                text: "إشتراك اسبوعي",
                fontSize: 15.36,
              ),
              Container(
                width: 98.88,
                height: 41.28,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(13.95),
                    gradient: LinearGradient(colors: [
                      Color(0xFFF89400),
                      Color(0xFFE44800)
                    ])),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    BorderdText(
                      text: "200k",
                      fontSize: 12.16,
                    ),
                    SizedBox(width: 5,),
                    Image.asset(
                      "assets/images/diamond.png",
                      width: 19.29,
                      height: 17.23,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
