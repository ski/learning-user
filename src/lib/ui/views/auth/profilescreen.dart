import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:isence/const/app_colors.dart';
import 'package:isence/ui/route/route.dart';
import 'package:isence/ui/widgets/authTextfield.dart';

// ignore: use_key_in_widget_constructors
class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                      "Profile Details",
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.isense_primary,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 3,
                      width:70.w,
                      color: Color(0xffF9BC7D),
                    ),
                    SizedBox(
                      height: 41.h,
                    ),
                    Text(
                      "Name",
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.isense_primary,
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    authTextField(
                        hint: "Suhail Mazoor",
                        prefixicon: FontAwesomeIcons.user,
                        inputType: TextInputType.text,
                        obsecuretext: false),
                    SizedBox(
                      height: 18.h,
                    ),
                    Text(
                      "Mobile Number",
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.isense_primary,
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    authTextField(
                        hint: "99794 09958",
                        prefixicon: FontAwesomeIcons.user,
                        inputType: TextInputType.text,
                        obsecuretext: false),
                    SizedBox(
                      height: 18.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Country",
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.isense_primary,
                          ),
                        ),
                        SizedBox(width: 15.w,),
                    Text(
                      "Optional",
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.isense_primary.withOpacity(0.5),
                      ),
                    ),
                      ],
                    ),
                    
                    SizedBox(
                      height: 6.h,
                    ),
                    authTextField(
                        hint: "Dubai",
                        prefixicon: FontAwesomeIcons.city,
                        inputType: TextInputType.text,
                        obsecuretext: false),
                    SizedBox(
                      height: 25.h,
                    ),
                    SizedBox(
                      height: 55.h,
                      width: double.infinity,
                      child: TextButton(
                        onPressed:()=>Get.toNamed(login),
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
                        child: Text("Finish"),
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
