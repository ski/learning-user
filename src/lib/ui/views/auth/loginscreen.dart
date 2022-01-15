import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:isence/const/app_colors.dart';
import 'package:isence/ui/route/route.dart';
import 'package:isence/ui/views/auth/signupscreen.dart';
import 'package:isence/ui/widgets/authTextfield.dart';

// ignore: use_key_in_widget_constructors
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                      "Hi, Welcome Back!",
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
                      "Get unlimited access to thousands of inspiring classes",
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.isense_primary.withOpacity(0.58),
                      ),
                    ),
                    SizedBox(
                      height: 41.h,
                    ),
                    SizedBox(
                      height: 55.h,
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(BorderSide(
                            color: AppColors.isense_primary.withOpacity(0.2),
                          )),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          foregroundColor: MaterialStateProperty.all(
                            AppColors.isense_primary,
                          ),
                          // padding: MaterialStateProperty.all(
                          //     EdgeInsets.symmetric(vertical: 14.h)),
                          textStyle: MaterialStateProperty.all(
                            TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "assets/icons/google.png",
                              height: 27.w,
                              width: 27.w,
                            ),
                            SizedBox(width: 20.w),
                            Text(
                              "Sign in with google",
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.isense_primary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    Row(
                      children: [
                        Expanded(child: Divider()),
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          "Or Sign in with Email",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.isense_primary.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Expanded(child: Divider()),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Text(
                      "Email address",
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
                        hint: "suhail@isense.u",
                        prefixicon: Icons.mail,
                        inputType: TextInputType.emailAddress,
                        obsecuretext: false
                        ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.isense_primary,
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    authTextFieldWithPrefix(
                      hint: "password",
                      prefixicon: Icons.lock,
                      inputType: TextInputType.text,
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    SizedBox(
                      height: 55.h,
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () =>Get.toNamed(loginbeforehome),
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
                        child: Text("Login"),
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
                            "Not Registered Yet?  ",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.isense_primary.withOpacity(.53),
                            ),
                          ),
                          TextButton(
                              onPressed:()=>Get.toNamed(signup),
                            child: Text(
                              "Create an Account",
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
