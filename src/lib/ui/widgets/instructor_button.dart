import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget InstructorButton(String text, Color color) {
  return Container(
    height: 45.h,
    width: 97.w,
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(3.r), color: color),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'SF Pro',
          fontSize: 15.sp,
          color: const Color(0xffffffff),
          fontWeight: FontWeight.w500,
          height: 1.53,
        ),
        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
        textAlign: TextAlign.left,
      ),
    ),
  );
}

