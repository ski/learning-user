import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:isence/ui/views/auth/signupscreen.dart';
import 'package:isence/ui/views/home/loginbeforehome.dart';
import 'ui/route/route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1400, 875),
      builder: () => GetMaterialApp(
        //  title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "SF Pro",
        ),
        home: SignupScreen(),
        // home: LoginBeforeHome(),
        initialRoute: signup,
        getPages: getPages,
      ),
    );
  }
}
