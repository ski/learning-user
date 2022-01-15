
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:isence/const/app_colors.dart';
import 'package:isence/ui/route/route.dart';

// ignore: use_key_in_widget_constructors
class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Container(
              height: ScreenUtil().screenHeight,
              width: 650.w,
              color: Color(0xffF7F9FB),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 96.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/logo/logo.png",
                      height: 32.h,
                    ),
                    SizedBox(
                      height: 48.h,
                    ),
                    Text(
                      "Verify OTP",
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.isense_primary,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "We have sent you OTP on your email",
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.isense_primary.withOpacity(0.58),
                      ),
                    ),
                    SizedBox(
                      height: 41.h,
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Email address",
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.isense_primary,
                          ),
                        ),
                    
                         Row(
                           children: [
                             Text(
                              "00:30",
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.isense_primary,
                              ),
                        ),
                         SizedBox(
                      width: 12.w,
                    ),
                          Text(
                          "Resend OTP",
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.isense_button,
                          ),
                        ),
                           ],
                         ),
                       
                      ],
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    

                        Container(
    height: 55.h,
    child: TextField(
      keyboardType: TextInputType.number,
     
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
              Icons.lock,
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
        hintText: '1234',
        // hintStyle: TextStyle(
        //   fontFamily: "SF Pro",
        //   fontSize: 18.sp,
        //   fontWeight: FontWeight.bold,
        //   color: AppColors.isense_primary,
        //   letterSpacing: 20.w
        // ),
       
      ),
    ),
  ),
                   
                    SizedBox(
                      height: 25.h,
                    ),
                    SizedBox(
                      height: 55.h,
                      width: double.infinity,
                      child: TextButton(
                        onPressed:()=>Get.toNamed(setpassword),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              AppColors.isense_button,
                            ),
                            foregroundColor: MaterialStateProperty.all(
                                AppColors.isense_white),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(vertical: 14.h)),
                            textStyle: MaterialStateProperty.all(TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ))),
                        child: Text("Next"),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text(
                            "Already have an account?  ",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.isense_primary.withOpacity(.53),
                            ),
                          ),
                          TextButton(
                               onPressed:()=>Get.toNamed(login),
                            child: Text(
                              "Signin",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.isense_button,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: ScreenUtil().screenHeight,
              width: 750.w,
              color: AppColors.isense_button,
              child: Padding(
                padding: EdgeInsets.only(left: 0.05.sw),
                child: Image.asset(
                  'assets/images/login.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
