import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isence/const/app_colors.dart';

Widget ReviewDescription(String des) {
  return Flexible(
    child: Column(
      children: [
        Text(
          des,
          
        
          style: TextStyle(
            fontFamily: 'SF Pro',
            fontSize: 13.sp,
            color: AppColors.isense_primary,
            
          ),
        ),
      ],
    ),
  );
}
