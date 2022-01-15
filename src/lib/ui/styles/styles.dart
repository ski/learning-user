import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isence/const/app_colors.dart';

BoxDecoration boxDecoration=BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: AppColors.isense_white,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.isense_primary,
                        offset: Offset(0, 6),
                        blurRadius: 7,
                      ),
                    ],
                  );