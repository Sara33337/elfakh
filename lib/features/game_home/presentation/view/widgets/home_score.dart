import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScore extends StatelessWidget {
  const HomeScore({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 98, // زودنا العرض شوية عشان نقدر نخرج العناصر برا
      height: 29,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          // Container الرئيسي
          Container(
            width: 97,
            height: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200.r),
              border: Border.all(color: const Color(0xFFDC7744)),
          
            ),
            alignment: Alignment.center,
            child: const Text(
              "15.5k",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
            ),
          ),

          // ➕ أيقونة على الشمال (بداية)
          Positioned(
            left: -4.w, // تطلع شوية برا
            child: Container(
              width: 26,
              height: 26,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Color(0xFFFCEABD), Color(0xFFD68006)],
                ),
              ),
              child: const Icon(Icons.add, size: 21, color: Colors.white,
            ),
            ),
          ),

          
          Positioned(
            right: -15.w, 
            child: Image.asset(
              "assets/images/diamond.png",
              width: 29.55,
              height: 26.39,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
