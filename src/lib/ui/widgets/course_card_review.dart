import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:isence/const/app_colors.dart';
import 'package:isence/ui/styles/styles.dart';
import 'package:isence/ui/widgets/regular_text.dart';

Widget CourseCardReview(String title, String subtitle, String time) {
  return Container(
      height: 48.h,
      decoration: CardBox(),
      child: Padding(
        padding: EdgeInsets.only(left: 15.w, right: 15.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 23,
                  width: 23,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    //borderRadius: BorderRadius.all(Radius.elliptical(999, 999)),
                    color: Color(0xffe7edf4),
                  ),
                  child: Center(
                      child: FaIcon(
                    FontAwesomeIcons.chevronDown,
                    size: 12.w,
                    color: AppColors.isense_primary,
                  )),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'SF Pro',
                    fontSize: 14.sp,
                    color: AppColors.isense_primary,
                    fontWeight: FontWeight.w500,
                    // height: 1.4285714285714286,
                  ),
                  //textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.folder,
                      size: 13.w,
                      color: AppColors.isense_primary,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    RegularText(subtitle),
                  ],
                ),
                SizedBox(
                  width: 15.w,
                ),
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.times,
                      size: 13.w,
                      color: AppColors.isense_primary,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    RegularText(time),
                  ],
                ),
              ],
            ),
          ],
        ),
      ));
}
