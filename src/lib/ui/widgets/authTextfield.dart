import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isence/const/app_colors.dart';

Widget authTextField(
    {required String hint, required IconData prefixicon, required inputType,required obsecuretext}) {
  return Container(
    height: 55.h,
    child: TextField(
      keyboardType: inputType,
      obscureText: obsecuretext,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.all(12.w),
          child: Container(
            width: 35.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: Color(0x64e7edf4),
            ),
            child: Center(
                child: Icon(
              prefixicon,
              size: 16.w,
               color: AppColors.isense_primary,
            )),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide(
              color: AppColors.isense_primary.withOpacity(0.2), width: 1),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 11.h),
        filled: true,
        fillColor: AppColors.isense_white,
        hintText: hint,
        hintStyle: TextStyle(
          fontFamily: "SF Pro",
          fontSize: 15.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.isense_primary,
        ),
      ),
    ),
  );
}

class authTextFieldWithPrefix extends StatefulWidget {
  @required
  String? hint;
  @required
  IconData? prefixicon;
  @required

  TextInputType? inputType;

  authTextFieldWithPrefix(
      {this.hint, this.prefixicon, this.inputType});

  @override
  _authTextFieldWithPrefixState createState() =>
      _authTextFieldWithPrefixState();
}

class _authTextFieldWithPrefixState extends State<authTextFieldWithPrefix> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      child: TextField(
        keyboardType: widget.inputType,
        obscureText: _obscureText,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.all(12.w),
            child: Container(
              width: 35.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: Color(0x64e7edf4),
              ),
              child: Center(
                  child: Icon(
                widget.prefixicon,
                size: 16.w,
                 color: AppColors.isense_primary,
              )),
            ),
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _obscureText =! _obscureText;
              });
            },
            icon: _obscureText==true? Icon(
              Icons.visibility_off,
              size: 17.w,
              color: AppColors.isense_primary,
            ):Icon(
              Icons.remove_red_eye,
              size: 17.w,
               color: AppColors.isense_primary,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.r),
            borderSide: BorderSide(
                color: AppColors.isense_primary.withOpacity(0.2), width: 1),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 11.h),
          filled: true,
          fillColor: AppColors.isense_white,
          hintText: widget.hint,
          hintStyle: TextStyle(
            fontFamily: "SF Pro",
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.isense_primary,
          ),
        ),
      ),
    );
  }
}
