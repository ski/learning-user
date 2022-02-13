import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:isence/ui/views/auth/loginscreen.dart';
import 'package:isence/ui/views/auth/otpscreen.dart';
import 'package:isence/ui/views/auth/profilescreen.dart';
import 'package:isence/ui/views/auth/setpasswordscreen.dart';
import 'package:isence/ui/views/auth/signupscreen.dart';
import 'package:isence/ui/views/business/businesspage.dart';
import 'package:isence/ui/views/course_details/course_details.dart';
import 'package:isence/ui/views/course_details/course_play_video.dart';
import 'package:isence/ui/views/home/loginafterhome.dart';
import 'package:isence/ui/views/home/loginbeforehome.dart';
import 'package:isence/ui/views/my_courses/my_courses.dart';
import 'package:isence/ui/views/profile/profilescreen.dart';
import 'package:isence/ui/views/shop/checkout.dart';
import 'package:isence/ui/views/shop/shoppingcart.dart';

// Route Names
const String signup = "/Signup-Screen";
const String otp = "/OTP-Screen";
const String setpassword = "/SetPassword";
const String profile = "/Login-Profile";
const String login = "/Login-Screen";

const String loginafterhome = "/LoginAfterHome-Screen";
const String loginbeforehome = "/LoginBeforeHome-Screen";
const String businesspage = "/Business-Screen";
const String mycourses = "/my-courses-Screen";
const String shoppingcart = "/ShoppingCart-Screen";
const String checkout = "/Checkout_Screen";
const String mainprofile = "/MainProfile-Screen";
const String courseDetails = "/Course-Details-Screen";
const String coursePlayVideo = "/Course-Play-Video-Screen";

// Control our page route flow
List<GetPage> getPages = [
  GetPage(
    name: login,
    page: () => LoginScreen(),
  ),
  GetPage(
    name: otp,
    page: () => OTPScreen(),
  ),
  GetPage(
    name: profile,
    page: () => ProfileScreen(),
  ),
  GetPage(
    name: setpassword,
    page: () => SetPasswordScreen(),
  ),
  GetPage(
    name: signup,
    page: () => SignupScreen(),
    transition: Transition.cupertino,
  ),
  GetPage(
    name: businesspage,
    page: () => BusinessPage(),
  ),
  GetPage(
    name: mycourses,
    page: () => MyCourses(),
  ),
  GetPage(
    name: loginafterhome,
    page: () => LoginAfterHome(),
  ),
  GetPage(
    name: loginbeforehome,
    page: () => LoginBeforeHome(),
  ),
  GetPage(
    name: checkout,
    page: () => Checkout(),
  ),
  GetPage(
    name: shoppingcart,
    page: () => ShoppingCart(),
  ),
  GetPage(
    name: mainprofile,
    page: () => MainProfilePage(),
  ),
  GetPage(
    name: courseDetails,
    page: () => CourseDetails(),
  ),
  GetPage(
    name: coursePlayVideo,
    page: () => CoursePlayVideo(),
  ),
];
