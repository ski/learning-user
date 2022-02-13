import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:isence/const/app_colors.dart';

Widget LearnCard(context, String text) {
  return Container(
    width: MediaQuery.of(context).size.width / 4.3,
    height: 40.h,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FaIcon(FontAwesomeIcons.angleDoubleRight,
            size: 13.w, color: Color(0xffF9BC7D)),
        SizedBox(
          width: 8.w,
        ),
        Flexible(
          child: Column(
            children: [
              Text(
                text,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                style: TextStyle(
                  fontFamily: 'SF Pro',
                  fontSize: 13.sp,
                  color: AppColors.isense_primary,
                  // height: 1.38,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

