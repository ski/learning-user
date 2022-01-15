import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isence/const/app_colors.dart';


Widget ReviewHeading(String heading) {
  return Text(
    heading,
    style: TextStyle(
        fontFamily: 'SF Pro',
        fontSize: 18.sp,
        color: AppColors.isense_primary,
        fontWeight: FontWeight.w600,
        height: 1.1),
    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
    textAlign: TextAlign.left,
  );
}

