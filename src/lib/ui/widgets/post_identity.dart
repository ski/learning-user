import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:isence/const/app_colors.dart';

Widget CreatePostIdentity(IconData iconData, String text) {
  return Row(
    children: [
      FaIcon(
        iconData,
        size: 13.w,
        color: AppColors.isense_primary.withOpacity(0.5),
      ),
      SizedBox(
        width: 5.w,
      ),
      Text(
        text,
        style: TextStyle(
          fontFamily: 'SF Pro',
          fontSize: 13.sp,
          color: AppColors.isense_primary,
          height: 1.76,
        ),
        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
        textAlign: TextAlign.center,
      ),
      SizedBox(
        width: 15.w,
      )
    ],
  );
}


Widget CreatePostIdentityTwo(IconData iconData, String text) {
  return Row(
    children: [
      FaIcon(
        iconData,
        size: 13.w,
        color: Colors.white.withOpacity(0.5),
      ),
      SizedBox(
        width: 5.w,
      ),
      Text(
        text,
        style: TextStyle(
          fontFamily: 'SF Pro',
          fontSize: 13.sp,
          color: Colors.white,
          height: 1.76,
        ),
        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
        textAlign: TextAlign.center,
      ),
      SizedBox(
        width: 15.w,
      )
    ],
  );
}
