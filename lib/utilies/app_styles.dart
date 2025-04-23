import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  static TextStyle baseWhite = TextStyle(
    color: Colors.white,
  );

  static TextStyle heading = baseWhite.copyWith(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle subtitle = baseWhite.copyWith(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle buttonText = baseWhite.copyWith(
    fontSize: 16.sp,
    letterSpacing: 1.2,
  );
}
