import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:isence/const/app_colors.dart';
import 'package:isence/ui/route/route.dart';
import 'package:isence/ui/views/auth/profilescreen.dart';
import 'package:isence/ui/views/business/businesspage.dart';
import 'package:isence/ui/views/home/loginbeforehome.dart';
import 'package:isence/ui/views/profile/profilescreen.dart';

class LoginAfterHome extends StatefulWidget {
  const LoginAfterHome({Key? key}) : super(key: key);

  @override
  _LoginAfterHomeState createState() => _LoginAfterHomeState();
}

class _LoginAfterHomeState extends State<LoginAfterHome> {
  final ScrollController controller = ScrollController();
  //category listview
  List<String> categorytext = [
    'Nursing',
    'Pharmacy',
    'Wellness',
    'Doctors',
    'Laboratory'
  ];
  List<String> courseitem = [
    '134 course',
    '432 course',
    '643 course',
    '123 course',
    '234 course'
  ];
  List<String> image = [
    "assets/icons/nurse.png",
    "assets/icons/drugs.png",
    "assets/icons/healthcare.png",
    "assets/icons/doctor.png",
    "assets/icons/laboratory.png"
  ];
  //learnig courses
  List<String> learningcourses = [
    'Clinical Supervision: Teaching and Facilitating Learning',
    'Introduction to Randomised Controlled Trials',
    'Quality Improvement in Healthcare: the Case for Change',
    'Clinical Supervision: Teaching and Facilitating Learning',
  ];
  List<String> learningimage = [
    'assets/images/four.png',
    'assets/images/three.png',
    'assets/images/two.png',
    'assets/images/one.png'
  ];

  //featured courses
  List<String> featured_image = [
    "assets/images/one.png",
    "assets/images/two.png",
    "assets/images/three.png",
    "assets/images/four.png",
    "assets/images/one.png"
  ];
  List<String> featured_courses = [
    'Telemedicine: Tools to Support',
    'Telemedicine: Tools to Support',
    'Telemedicine: Tools to Support',
    'Telemedicine: Tools to Support',
    'Telemedicine: Tools to Support'
  ];
  //popular courses
  List<String> popular_image = [
    "assets/images/three.png",
    "assets/images/four.png",
    "assets/images/one.png",
    "assets/images/two.png",
    "assets/images/three.png"
  ];

  String dropdownValue = 'Suhail';
  String dropdownCategory = 'Explore';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //Topbar section starts here
            Container(
              height: 90.h,
              decoration: BoxDecoration(
                color: AppColors.isense_white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x17000000),
                    offset: Offset(0, 1),
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 100.w, right: 100.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () => Get.toNamed(loginafterhome),
                          child: Image.asset(
                            "assets/logo/logo.png",
                            height: 32.h,
                            width: 145.w,
                          ),
                        ),
                        SizedBox(
                          width: 50.w,
                        ),
                        Container(
                          height: 40.h,
                          width: 300.w,
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.search,
                                color: AppColors.isense_primary,
                                size: 15.w,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(33.r),
                                borderSide: BorderSide(
                                    color: AppColors.isense_primary
                                        .withOpacity(0.2),
                                    width: 1),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 9.w, vertical: 11.h),
                              filled: true,
                              fillColor: AppColors.isense_white,
                              hintText: 'Search For Anything',
                              hintStyle: TextStyle(
                                fontFamily: "SF Pro",
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.isense_primary,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DropdownButton<String>(
                          value: dropdownCategory,
                          icon: FaIcon(
                            FontAwesomeIcons.caretDown,
                            color: Colors.black,
                            size: 15.w,
                          ),
                          iconSize: 24.w,
                          elevation: 16,
                          hint: Text(
                            'Explore',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                            ),
                          ),
                          dropdownColor: AppColors.isense_button,
                          underline: Container(
                            height: 1,
                            color: Colors.transparent,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownCategory = newValue!;
                            });
                          },
                          items: <String>[
                            'Explore',
                            'Explore2',
                            'Explore3',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: EdgeInsets.only(right: 20.w),
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        TextButton(
                          onPressed: () => Get.toNamed(businesspage),
                          child: Text(
                            'Business',
                            style: TextStyle(
                              fontFamily: 'SF Pro',
                              fontSize: 16.sp,
                              color: AppColors.isense_primary,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        TextButton(
                          onPressed: () => Get.toNamed(mycourses),
                          child: Text(
                            'My Courses',
                            style: TextStyle(
                              fontFamily: 'SF Pro',
                              fontSize: 16.sp,
                              color: AppColors.isense_primary,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        Stack(
                          overflow: Overflow.visible,
                          children: [
                            TextButton(
                              onPressed: () => Get.toNamed(shoppingcart),
                              child: Icon(
                                Icons.shopping_cart,
                                size: 20.w,
                                color: Colors.black,
                              ),
                            ),
                            Positioned(
                              bottom: 26.h,
                              left: 32.w,
                              child: Container(
                                  height: 19.h,
                                  width: 19.h,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    // borderRadius: BorderRadius.all(Radius.elliptical(999.0, 999.0)),
                                    color: Color(0xfff9bc7d),
                                  ),
                                  child: Center(
                                    child: Text("3",
                                        style: TextStyle(fontSize: 8)),
                                  )),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        TextButton(
                          onPressed: () => Get.toNamed(mainprofile),
                          child: Container(
                            height: 40.h,
                            width: 120.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.r),
                                color: AppColors.isense_button),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.user,
                                  size: 14.w,
                                  color: AppColors.isense_white,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  'Suhail',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                // DropdownButton<String>(
                                //   value: dropdownValue,
                                //   icon: FaIcon(
                                //     FontAwesomeIcons.caretDown,
                                //     color: Colors.white,
                                //     size: 15.w,
                                //   ),
                                //   iconSize: 24.w,
                                //   elevation: 16,
                                //   hint: Text(
                                //     'Suhail',
                                //     style: TextStyle(
                                //       color: Colors.white,
                                //       fontSize: 16.sp,
                                //     ),
                                //   ),
                                //   dropdownColor: Colors.white,
                                //   underline: Container(
                                //     height: 1,
                                //     color: Colors.transparent,
                                //   ),
                                //   onChanged: (String? newValue) {
                                //     setState(() {
                                //       dropdownValue = newValue!;
                                //     });
                                //   },
                                //   items: <String>[
                                //     'Suhail',
                                //     'Afran',
                                //     'Hamidul',
                                //   ].map<DropdownMenuItem<String>>((String value) {
                                //     return DropdownMenuItem<String>(
                                //       value: value,
                                //       child: Padding(
                                //         padding: EdgeInsets.only(right: 10.w),
                                //         child: Text(
                                //           value,
                                //           style: TextStyle(
                                //             color: Colors.white,
                                //             fontSize: 16.sp,
                                //           ),
                                //         ),
                                //       ),
                                //     );
                                //   }).toList(),
                                // ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            //Topbar section ends here
            //Header section starts here
            Container(
              height: 660.h,
              color: Color(0xffE7EDF4).withOpacity(0.8),
              child: Padding(
                padding: EdgeInsets.only(left: 100.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'GD Sage',
                              fontSize: 51.sp,
                              color: AppColors.isense_button,
                              //  height: 1.15,
                            ),
                            children: [
                              TextSpan(
                                text: 'World-class healthcare \n',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: 'learning for you',
                                style: TextStyle(
                                  color: AppColors.isense_primary,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          // textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          // textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SectionDivider(),
                        SizedBox(
                          height: 25.h,
                        ),
                        Scrollbar(
                          child: SingleChildScrollView(
                            child: SectionSubtitle(
                                'Pursue a promotion, a raise, or switch careers. 89% of learners who \nhave taken a course report career benefits.'),
                          ),
                        ),
                        SizedBox(height: 50.h),
                        Row(
                          children: [
                            Container(
                              height: 45.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.r))),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.r)),
                                child: Image.asset(
                                  'assets/logo/playstore.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 25.w,
                            ),
                            Container(
                              height: 45.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.r))),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.r)),
                                child: Image.asset(
                                  'assets/logo/appstore.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      height: 540.h,
                      width: 750.w,
                      child: Image.asset(
                        'assets/images/doctor.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Header section ends here
            //learning section starts here
            Container(
              height: 400.h,
              color: AppColors.isense_white,
              child: Padding(
                padding: EdgeInsets.only(left: 100.w, right: 100.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'GD Sage',
                              fontSize: 34,
                              color: AppColors.isense_primary,
                            ),
                            children: [
                              TextSpan(
                                text: 'Continue learning, ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: 'Suhail',
                                style: TextStyle(
                                  color: AppColors.isense_button,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'My Courses',
                          style: TextStyle(
                            fontFamily: 'SF Pro',
                            fontSize: 15.sp,
                            color: AppColors.isense_button,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 40.h),
                    Container(
                      height: 165.h,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: learningcourses.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () => Get.toNamed(coursePlayVideo),
                              child: Padding(
                                padding: EdgeInsets.only(right: 30.w),
                                child: Container(
                                  height: 165.h,
                                  width: 365.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.r),
                                    color: AppColors.isense_white,
                                    border: Border.all(
                                        width: 1.0,
                                        color: Color(0x2900599f)
                                            .withOpacity(0.16)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          height: 165.h,
                                          width: 135.w,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                bottomLeft:
                                                    Radius.circular(4.0),
                                              ),
                                              gradient: LinearGradient(
                                                begin: Alignment(-1.32, -1.62),
                                                end: Alignment(1.64, 1.79),
                                                colors: [
                                                  const Color(0x95000000),
                                                  const Color(0x9500599f)
                                                ],
                                                stops: [0.0, 1.0],
                                              ),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      learningimage[index]),
                                                  fit: BoxFit.cover)),
                                          child: Center(
                                            child: FaIcon(
                                                FontAwesomeIcons.playCircle,
                                                size: 28.w,
                                                color: AppColors.isense_white),
                                          )),
                                      Padding(
                                        padding: EdgeInsets.all(12.w),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 22.h,
                                              width: 70.w,
                                              decoration: BoxDecoration(
                                                color: AppColors.isense_primary,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Episode 1',
                                                  style: TextStyle(
                                                    fontFamily: 'SF Pro',
                                                    fontSize: 12.sp,
                                                    color:
                                                        AppColors.isense_white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 200.w,
                                              child: Text(
                                                learningcourses[index],
                                                style: TextStyle(
                                                  fontFamily: 'SF Pro',
                                                  fontSize: 15.sp,
                                                  color:
                                                      AppColors.isense_primary,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: 4.h,
                                                  width: 80.w,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  4.r))),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 4.h,
                                                        width: 40.w,
                                                        color: AppColors
                                                            .isense_button,
                                                      ),
                                                      Container(
                                                        height: 4.h,
                                                        width: 40.w,
                                                        color: AppColors
                                                            .sectionBackground,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 25.w,
                                                ),
                                                FaIcon(FontAwesomeIcons.clock,
                                                    size: 13.w,
                                                    color: AppColors
                                                        .dividerBackground),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Text(
                                                  '20Min Left',
                                                  style: TextStyle(
                                                      fontFamily: 'SF Pro',
                                                      fontSize: 12.sp,
                                                      color: AppColors
                                                          .isense_primary
                                                          .withOpacity(0.6)),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
            //learning section starts here
            //Recommeded section starts here
            Container(
              height: 380.h,
              color: Color(0xffEBF0F6),
              child: Padding(
                padding: EdgeInsets.only(left: 100.w, right: 100.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'GD Sage',
                          fontSize: 34.sp,
                          color: AppColors.isense_primary,
                          // height: 1.85,
                        ),
                        children: [
                          TextSpan(
                            text: 'Topics ',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: 'Recommended',
                            style: TextStyle(
                              color: AppColors.isense_button,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: ' for you',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TopicButton("Quality Healthcare"),
                        TopicButton("Growth Disorders"),
                        TopicButton("Post-COVID"),
                        TopicButton("Health Literacy"),
                        TopicButton("Aid Sector"),
                        TopicButton("Nursing"),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TopicButton("Randomised"),
                        TopicButton("Wellness Industry"),
                        TopicButton("Quality Healthcare"),
                        TopicButton("Aid Sector"),
                        TopicButton("Healthcare Nursing"),
                        TopicButton("Health Literacy"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //Recommeded section ends here
            //Traning section starts here
            Container(
              height: 190.h,
              color: AppColors.isense_button,
              child: Padding(
                padding: EdgeInsets.only(left: 100.w, right: 100.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SectionSmallTitle('Training 5 or more people? ',
                            AppColors.isense_white),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Get your team access to top 9,000+ courses',
                          style: TextStyle(
                              fontFamily: 'SF Pro',
                              fontSize: 19.sp,
                              color: AppColors.isense_white),
                        ),
                      ],
                    ),
                    Stack(
                      overflow: Overflow.visible,
                      children: [
                        Container(
                          height: 125.h,
                          width: 125.w,
                          child: Image.asset(
                            "assets/images/circle.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                            top: 30.h,
                            right: 30.w,
                            child: Container(
                              height: 60.h,
                              width: 220.w,
                              decoration: BoxDecoration(
                                  color: AppColors.isense_white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.r))),
                              child: Center(
                                child: Text(
                                  'Get isense.u Business ',
                                  style: TextStyle(
                                    fontFamily: 'SF Pro',
                                    fontSize: 16.sp,
                                    color: AppColors.isense_button,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
            //Traning section ends here
            //Explore section starts here
            Container(
              height: 410.h,
              width: double.infinity,
              color: AppColors.isense_white,
              child: Padding(
                padding: EdgeInsets.only(left: 100.w, right: 100.w, top: 50.h),
                child: Column(
                  children: [
                    SectionTitle('Explore isense.u'),
                    SizedBox(
                      height: 10.h,
                    ),
                    SectionSubtitle(
                        'Take the next step toward your personal and professional goals with Sense.u'),
                    SizedBox(
                      height: 25.h,
                    ),
                    SectionDivider(),
                  ],
                ),
              ),
            ),
            //Explore section starts here
            //Featured section starts here
            Stack(overflow: Overflow.visible, children: [
              Container(
                height: 740.h,
                color: Color(0xffE7EDF4),
                child: Padding(
                  padding: EdgeInsets.only(left: 100.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 220.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SectionTitle("Featured Courses"),
                          SizedBox(
                            width: 20.w,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 17.h),
                            child: Container(
                              height: 3.h,
                              width: 35.w,
                              color: Color(0xffF9BC7D),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SectionSubtitle(
                              "Find what fascinates you as you explore these online classes."),
                          Row(
                            children: [
                              ArrowButton(Icons.arrow_back, () {}),
                              SizedBox(
                                width: 15.w,
                              ),
                              ArrowButton(Icons.arrow_forward, () {}),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 310.h,
                        child: ScrollConfiguration(
                          behavior: MyCustomScrollBehavior(),
                          child: ListView.builder(
                              controller: controller,
                              scrollDirection: Axis.horizontal,
                              itemCount: categorytext.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () => Get.toNamed(courseDetails),
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 20.w),
                                    child: Container(
                                        height: 300.h,
                                        width: 260.w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  featured_image[index]),
                                              fit: BoxFit.cover),
                                        ),
                                        child: Container(
                                          height: 300.h,
                                          width: 260.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                            gradient: LinearGradient(
                                              begin: Alignment(-0.06, -1.0),
                                              end: Alignment(-0.05, 1.05),
                                              colors: [
                                                Color(0x00000000),
                                                Color(0x99000000),
                                                Color(0x71000000)
                                              ],
                                              stops: [0.0, 0.834, 1.0],
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x111b3950),
                                                offset: Offset(0, 2),
                                                blurRadius: 10,
                                              ),
                                            ],
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(20.w),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Get.toNamed(shoppingcart),
                                                  child: Container(
                                                    height: 35,
                                                    width: 35,
                                                    decoration: BoxDecoration(
                                                        color: Colors.black
                                                            .withOpacity(0.25),
                                                        shape: BoxShape.circle),
                                                    child: Center(
                                                        child: Icon(
                                                            Icons
                                                                .shopping_cart_outlined,
                                                            size: 18.w,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '\$200',
                                                      style: TextStyle(
                                                        fontFamily: 'SF Pro',
                                                        fontSize: 19.sp,
                                                        color: AppColors
                                                            .isense_white,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 7.h,
                                                    ),
                                                    Text(
                                                      featured_courses[index],
                                                      style: TextStyle(
                                                        fontFamily: 'SF Pro',
                                                        fontSize: 14.sp,
                                                        color: AppColors
                                                            .isense_white,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 40.h,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Icon(
                                                              Icons.folder,
                                                              size: 12.w,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            SizedBox(
                                                              width: 5.w,
                                                            ),
                                                            Text(
                                                              '15 Lessons ',
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'SF Pro',
                                                                fontSize: 12.sp,
                                                                color: AppColors
                                                                    .isense_white,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            FaIcon(
                                                              FontAwesomeIcons
                                                                  .clock,
                                                              size: 12.w,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            SizedBox(
                                                              width: 5.w,
                                                            ),
                                                            Text(
                                                              '60h',
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'SF Pro',
                                                                fontSize: 12.sp,
                                                                color: AppColors
                                                                    .isense_white,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        )),
                                  ),
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -150.h,
                left: 0,
                child: Container(
                  height: 300.h,
                  width: 1395.w,
                  child: Padding(
                    padding: EdgeInsets.only(left: 100.w, right: 100.w),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categorytext.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 25.w),
                          child: Container(
                            height: 270.h,
                            width: 210.w,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Colors.white,
                                border: Border.all(
                                    color: AppColors.isense_primary
                                        .withOpacity(0.16))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 40.h,
                                  backgroundColor: Color(0xffE7EDF4),
                                  child: Container(
                                    height: 45.h,
                                    width: 45.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(image[index]),
                                            fit: BoxFit.contain),
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Text(
                                  categorytext[index],
                                  style: TextStyle(
                                    fontFamily: 'SF Pro',
                                    fontSize: 16.sp,
                                    color: AppColors.isense_button,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  height: 32.h,
                                  width: 105.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60.r),
                                    color: Color(0xfff9bc7d),
                                  ),
                                  child: Center(
                                    child: Text(
                                      courseitem[index],
                                      style: TextStyle(
                                        fontFamily: 'SF Pro',
                                        fontSize: 13.sp,
                                        color: AppColors.isense_white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              )
            ]),
            //Featured section ends here
            //Popular section starts here
            Container(
              height: 560.h,
              color: Color(0xffF9BC7D),
              child: Padding(
                padding: EdgeInsets.only(left: 100.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    SectionTitle("Popular courses"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SectionSubtitle(
                            "Break into a new field like information technology or data science."),
                        Row(
                          children: [
                            ArrowButton(Icons.arrow_back, () {}),
                            SizedBox(
                              width: 15.w,
                            ),
                            ArrowButton(Icons.arrow_forward, () {}),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      height: 310.h,
                      child: ScrollConfiguration(
                        behavior: MyCustomScrollBehavior(),
                        child: ListView.builder(
                            controller: controller,
                            scrollDirection: Axis.horizontal,
                            itemCount: categorytext.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () => Get.toNamed(courseDetails),
                                child: Padding(
                                  padding: EdgeInsets.only(right: 20.w),
                                  child: Container(
                                      height: 300.h,
                                      width: 260.w,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                popular_image[index]),
                                            fit: BoxFit.cover),
                                      ),
                                      child: Container(
                                        height: 300.h,
                                        width: 260.w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          gradient: LinearGradient(
                                            begin: Alignment(-0.06, -1.0),
                                            end: Alignment(-0.05, 1.05),
                                            colors: [
                                              Color(0x00000000),
                                              Color(0x99000000),
                                              Color(0x71000000)
                                            ],
                                            stops: [0.0, 0.834, 1.0],
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x111b3950),
                                              offset: Offset(0, 2),
                                              blurRadius: 10,
                                            ),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(20.w),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextButton(
                                                onPressed: () =>
                                                    Get.toNamed(shoppingcart),
                                                child: Container(
                                                  height: 35,
                                                  width: 35,
                                                  decoration: BoxDecoration(
                                                      color: Colors.black
                                                          .withOpacity(0.25),
                                                      shape: BoxShape.circle),
                                                  child: Center(
                                                      child: Icon(
                                                          Icons
                                                              .shopping_cart_outlined,
                                                          size: 18.w,
                                                          color: Colors.white)),
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '\$200',
                                                    style: TextStyle(
                                                      fontFamily: 'SF Pro',
                                                      fontSize: 19.sp,
                                                      color: AppColors
                                                          .isense_white,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 7.h,
                                                  ),
                                                  Text(
                                                    featured_courses[index],
                                                    style: TextStyle(
                                                      fontFamily: 'SF Pro',
                                                      fontSize: 14.sp,
                                                      color: AppColors
                                                          .isense_white,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 40.h,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons.folder,
                                                            size: 12.w,
                                                            color: Colors.white,
                                                          ),
                                                          SizedBox(
                                                            width: 5.w,
                                                          ),
                                                          Text(
                                                            '15 Lessons ',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'SF Pro',
                                                              fontSize: 12.sp,
                                                              color: AppColors
                                                                  .isense_white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .clock,
                                                            size: 12.w,
                                                            color: Colors.white,
                                                          ),
                                                          SizedBox(
                                                            width: 5.w,
                                                          ),
                                                          Text(
                                                            '60h',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'SF Pro',
                                                              fontSize: 12.sp,
                                                              color: AppColors
                                                                  .isense_white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Popular section ends here
            //Nurseing section starts here
            Container(
              height: 600.h,
              color: Color(0xffE7EDF4),
              child: Padding(
                padding: EdgeInsets.only(left: 100.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SectionTitle("Because you search Nursing "),
                        SizedBox(
                          width: 20.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 17.h),
                          child: Container(
                            height: 3.h,
                            width: 35.w,
                            color: Color(0xffF9BC7D),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SectionSubtitle(
                            "Find what fascinates you as you explore these online classes."),
                        Row(
                          children: [
                            ArrowButton(Icons.arrow_back, () {}),
                            SizedBox(
                              width: 15.w,
                            ),
                            ArrowButton(Icons.arrow_forward, () {}),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      height: 310.h,
                      child: ScrollConfiguration(
                        behavior: MyCustomScrollBehavior(),
                        child: ListView.builder(
                            controller: controller,
                            scrollDirection: Axis.horizontal,
                            itemCount: categorytext.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () => Get.toNamed(courseDetails),
                                child: Padding(
                                  padding: EdgeInsets.only(right: 20.w),
                                  child: Container(
                                      height: 300.h,
                                      width: 260.w,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                featured_image[index]),
                                            fit: BoxFit.cover),
                                      ),
                                      child: Container(
                                        height: 300.h,
                                        width: 260.w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          gradient: LinearGradient(
                                            begin: Alignment(-0.06, -1.0),
                                            end: Alignment(-0.05, 1.05),
                                            colors: [
                                              Color(0x00000000),
                                              Color(0x99000000),
                                              Color(0x71000000)
                                            ],
                                            stops: [0.0, 0.834, 1.0],
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x111b3950),
                                              offset: Offset(0, 2),
                                              blurRadius: 10,
                                            ),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(20.w),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextButton(
                                                onPressed: () =>
                                                    Get.toNamed(shoppingcart),
                                                child: Container(
                                                  height: 35,
                                                  width: 35,
                                                  decoration: BoxDecoration(
                                                      color: Colors.black
                                                          .withOpacity(0.25),
                                                      shape: BoxShape.circle),
                                                  child: Center(
                                                      child: Icon(
                                                          Icons
                                                              .shopping_cart_outlined,
                                                          size: 18.w,
                                                          color: Colors.white)),
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '\$200',
                                                    style: TextStyle(
                                                      fontFamily: 'SF Pro',
                                                      fontSize: 19.sp,
                                                      color: AppColors
                                                          .isense_white,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 7.h,
                                                  ),
                                                  Text(
                                                    featured_courses[index],
                                                    style: TextStyle(
                                                      fontFamily: 'SF Pro',
                                                      fontSize: 14.sp,
                                                      color: AppColors
                                                          .isense_white,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 40.h,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons.folder,
                                                            size: 12.w,
                                                            color: Colors.white,
                                                          ),
                                                          SizedBox(
                                                            width: 5.w,
                                                          ),
                                                          Text(
                                                            '15 Lessons ',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'SF Pro',
                                                              fontSize: 12.sp,
                                                              color: AppColors
                                                                  .isense_white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .clock,
                                                            size: 12.w,
                                                            color: Colors.white,
                                                          ),
                                                          SizedBox(
                                                            width: 5.w,
                                                          ),
                                                          Text(
                                                            '60h',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'SF Pro',
                                                              fontSize: 12.sp,
                                                              color: AppColors
                                                                  .isense_white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Nurseing section ends here
            //Footer section Starts here
            Container(
              height: 450.h,
              color: AppColors.isense_primary,
              child: Padding(
                padding: EdgeInsets.only(left: 100.w, right: 100.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () => Get.toNamed(loginafterhome),
                              child: Image.asset(
                                "assets/logo/logofooter.png",
                                height: 32.h,
                                width: 145.w,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '© 2021 Isense.u, All Rights Reserved',
                              style: TextStyle(
                                fontFamily: 'SF Pro',
                                fontSize: 15.sp,
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Divider(
                          height: 1,
                          color: AppColors.sectionBackground.withOpacity(0.2),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FooterTitle('Contact'),
                            SizedBox(
                              height: 10.h,
                            ),
                            SmallDivider(),
                            Padding(
                              padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
                              child: FooterDescription(
                                  'iSense Bio FZE, Office 13, The Iridium Building, Umm\nSuqeim Road, Al Barsha.Dubai, UAE'),
                            ),
                            FooterDescription('info@isense.u'),
                            FooterDescription('+44 7958 557852')
                          ],
                        ),
                        VirticallyDividerWidget(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FooterTitle('Quick links'),
                            SizedBox(
                              height: 10.h,
                            ),
                            SmallDivider(),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FooterDescription('About Us'),
                                    FooterDescription('Contact Us'),
                                    FooterDescription('Blog'),
                                    FooterDescription('Careers'),
                                  ],
                                ),
                                SizedBox(
                                  width: 50.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FooterDescription('FAQ'),
                                    FooterDescription('Terms'),
                                    FooterDescription('Privacy policy '),
                                    FooterDescription('Sitemap'),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        VirticallyDividerWidget(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FooterTitle('Get The App'),
                            SizedBox(
                              height: 10.h,
                            ),
                            SmallDivider(),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 45.h,
                                  width: 140.w,
                                  child: Image.asset(
                                    'assets/logo/playstore.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 25.w,
                                ),
                                Container(
                                  height: 45.h,
                                  width: 140.w,
                                  child: Image.asset(
                                    'assets/logo/appstore.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FooterDescription('Instagram'),
                                    FooterDescription('Facebook'),
                                  ],
                                ),
                                SizedBox(
                                  width: 50.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FooterDescription('linkedin'),
                                    FooterDescription('twitter')
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
            //Footer section ends here
          ],
        ),
      ),
    );
  }
}

Widget TopicButton(String text) {
  return Container(
    height: 70.h,
    width: 180.w,
    color: AppColors.isense_white,
    child: Center(child: SectionSubtitle(text)),
  );
}

Widget SectionSmallTitle(String title, color) {
  return Text(
    title,
    style: TextStyle(
      fontFamily: 'GD Sage',
      fontSize: 35.sp,
      color: color,
      fontWeight: FontWeight.w700,
    ),
  );
}
