import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:isence/const/app_colors.dart';
import 'package:isence/ui/route/route.dart';


// ignore: use_key_in_widget_constructors
class SetPasswordScreen extends StatefulWidget {
  @override
  _SetPasswordScreenState createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();

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
                      "Set Password",
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
                      "Use Strong password!",
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
                      height: 15.h,
                    ),
                    // Text(
                    //   "Enter Password",
                    //   style: TextStyle(
                    //     fontSize: 13.sp,
                    //     fontWeight: FontWeight.w400,
                    //     color: AppColors.insane_primary,
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 6.h,
                    // ),
                    // authTextFieldWithPrefix(
                    //   hint: "2345#@5678",
                    //   prefixicon: Icons.lock,
                    //   inputType: TextInputType.text,
                    // ),
                    // SizedBox(
                    //   height: 18.h,
                    // ),
                    // Text(
                    //   "Confirm Password",
                    //   style: TextStyle(
                    //     fontSize: 13.sp,
                    //     fontWeight: FontWeight.w400,
                    //     color: AppColors.insane_primary,
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 6.h,
                    // ),
                    // authTextField(
                    //     hint: "",
                    //     prefixicon: Icons.lock,
                    //     inputType: TextInputType.text,
                    //     obsecuretext: true),
                    SizedBox(
                      height: 25.h,
                    ),

                    MyCustomForm(),

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


class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  var confirmPass;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Enter Password",
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.isense_primary,
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          Container(
            //height: 55.h,
            child: TextFormField(
              keyboardType: TextInputType.number,
              obscureText: false,
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
          hintText: '2345#@5678',
          hintStyle: TextStyle(
            fontFamily: "SF Pro",
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.isense_primary,
          ),
        ),
              validator: (value) {
                confirmPass = value;
                if (value == null || value.isEmpty) {
                  return "Please Enter Password";
                } else if (value.length < 8) {
                  return "Password must be atleast 8 characters long";
                } else if (value != confirmPass) {
                  return "Password must be same as above";
                } else {
                  return null;
                }
            
              },
            ),
          ),

          SizedBox(
            height: 18.h,
          ),
          Text(
            "Confirm Password",
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.isense_primary,
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          Container(
           // height: 55.h,
            child: TextFormField(
              keyboardType: TextInputType.number,
              obscureText: false,
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
                      color: AppColors.isense_primary.withOpacity(0.2),
                      width: 1),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 9.w, vertical: 11.h),
                filled: true,
                fillColor: AppColors.isense_white,
                hintText: "2345#@5678",
                hintStyle: TextStyle(
                  fontFamily: "SF Pro",
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.isense_primary,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please Re-Enter Password";
                } else if (value.length < 8) {
                  return "Password must be atleast 8 characters long";
                } else if (value != confirmPass) {
                  return "Password must be same as above";
                } else {
                  return null;
                }
                // if (value == null || value.isEmpty) {
                //   return 'Please enter reenter password';
                // }
                // return null;
              },
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          SizedBox(
            height: 55.h,
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   const SnackBar(content: Text('Processing Data')),
                  // );
                  Get.toNamed(profile);
                }
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    AppColors.isense_button,
                  ),
                  foregroundColor:
                      MaterialStateProperty.all(AppColors.isense_white),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 14.h)),
                  textStyle: MaterialStateProperty.all(TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ))),
              child: Text("Next"),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 16.0),
          //   child: ElevatedButton(
          //     onPressed: () {
          //       if (_formKey.currentState!.validate()) {
          //         ScaffoldMessenger.of(context).showSnackBar(
          //           const SnackBar(content: Text('Processing Data')),
          //         );
          //       }
          //     },
          //     child: const Text('Submit'),
          //   ),
          // ),
        ],
      ),
    );
  }
}
