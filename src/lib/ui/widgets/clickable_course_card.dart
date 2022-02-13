import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:isence/const/app_colors.dart';
import 'package:isence/ui/styles/styles.dart';
import 'package:isence/ui/widgets/regular_text.dart';

Widget ClickableCourseCard(
    String titleone,
    String subtitleone,
    String timeone,
    String titletwo,
    String subtitletwo,
    String timetwo,
    String titlethree,
    String timethree) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
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
                      FontAwesomeIcons.chevronUp,
                      size: 12.w,
                      color: AppColors.isense_primary,
                    )),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    'Part 1: An Introduction to the Global Pharma Industry',
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
                      RegularText('2 lectures'),
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
                      RegularText('6 min'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 20.w, right: 15.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.playCircle,
                  size: 12.w,
                  color: AppColors.isense_primary,
                ),
                SizedBox(
                  width: 20.w,
                ),
                RegularText(titleone),
              ],
            ),
            Row(
              children: [
                Text(
                  subtitleone,
                  style: TextStyle(
                    fontFamily: 'SF Pro',
                    fontSize: 13.sp,
                    color: AppColors.isense_button,
                    fontWeight: FontWeight.w500,
                    height: 1.38,
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                RegularText(timeone)
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 20.w, right: 15.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.playCircle,
                  size: 12.w,
                  color: AppColors.isense_primary,
                ),
                SizedBox(
                  width: 20.w,
                ),
                RegularText(titletwo),
              ],
            ),
            Row(
              children: [
                Text(
                  subtitletwo,
                  style: TextStyle(
                    fontFamily: 'SF Pro',
                    fontSize: 13.sp,
                    color: AppColors.isense_button,
                    fontWeight: FontWeight.w500,
                    height: 1.38,
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                RegularText(timetwo)
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 20.w, right: 15.w, bottom: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.questionCircle,
                  size: 12.w,
                  color: AppColors.isense_primary,
                ),
                SizedBox(
                  width: 20.w,
                ),
                RegularText(titlethree),
              ],
            ),
            RegularText(timethree),
          ],
        ),
      ),
    ],
  );
}
