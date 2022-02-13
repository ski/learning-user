import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:isence/const/app_colors.dart';

Widget CourseIncludes(IconData iconData, String text) {
  return Padding(
    padding: EdgeInsets.only(left: 20.w),
    child: Row(
      children: [
        FaIcon(
          iconData,
          size: 14.w,
          color: AppColors.isense_primary.withOpacity(0.5),
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          text,
          style: TextStyle(
            fontFamily: 'SF Pro',
            fontSize: 14.sp,
            color: AppColors.isense_primary,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

