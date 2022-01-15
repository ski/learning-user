import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:isence/const/app_colors.dart';
import 'package:isence/ui/route/route.dart';
import 'package:isence/ui/views/home/loginafterhome.dart';
import 'package:isence/ui/views/shop/shoppingcart.dart';
import 'package:isence/ui/widgets/review_heading.dart';

class LoginBeforeHome extends StatefulWidget {
  const LoginBeforeHome({Key? key}) : super(key: key);

  @override
  _LoginBeforeHomeState createState() => _LoginBeforeHomeState();
}

class _LoginBeforeHomeState extends State<LoginBeforeHome> {
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
  //our testimonials
  List<String> testimonials_category = [
    'Amazing Courses',
    'Love The Graphics',
    'Clear, Excellent Graphics',
    'Neutral And Informative',
  ];
  List<String> testimonials_des = [
    'Absolutely a must-have adjunct to your medical education. Structured, focused, and geared to help you succeed. I learn the majority of my med school material from Isense! No need for big heavy books.',
    'Love the graphics. I loved your presentation. The only thing I would have like to have included was some type of assessment tool such as a small quiz at the end of each section. Otherwise I am impressed.',
    'Clear, excellent graphics and electrician along with clear explanations. High-level view of the US healthcare industry is provided. Issues And resolutions are clearly explained.',
    '30 minutes very well spent! This course provides a neutral and informative overview of Health Care Reform. The use of the hand on the white board was very effective in “illustrating”',
  ];
  List<String> testimonials_image = [
    "assets/images/instructor_img1.png",
    "assets/images/instructor_img2.png",
    "assets/images/instructor_img3.png",
    "assets/images/instructor_img4.png",
  ];
  List<String> name = [
    'Jesse',
    'Sundar',
    'David',
    'Rahim',
  ];
  List<String> subject = [
    'Audiologist',
    'Cardiac sonographer',
    'Dietitian',
    'Data Scientist',
  ];

  String dropdownValue = 'Suhail Manzoor';
  String dropdownCategory = 'Explore';
final ScrollController controller = ScrollController();

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
                          onPressed:()=>Get.toNamed(loginbeforehome),
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
                          dropdownColor:AppColors.isense_button,
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
                          onPressed:()=>Get.toNamed(businesspage),
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
                        Stack(
                          overflow: Overflow.visible,
                          children: [
                            TextButton(
                              onPressed:()=>Get.toNamed(shoppingcart),
                              child: Icon(
                                Icons.shopping_cart,
                                size: 20.w,
                                color: Colors.black,
                              ),
                            ),
                            Positioned(
                                 bottom: 26.h,
                              left:32.w,
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
                           onPressed:()=>Get.toNamed(loginafterhome),
                          child: Container(
                            height: 40.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.r),
                                color: AppColors.isense_button),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(FontAwesomeIcons.user,size: 14.w,color: AppColors.isense_white,),
                                // Image.asset(
                                //   "assets/icons/user.png",
                                //   height: 30.h,
                                // width: 15.w,
                                //  // fit: BoxFit.contain
                                // ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  'Sign In',
                                  style: TextStyle(
                                    fontFamily: 'SF Pro',
                                    fontSize: 14.sp,
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                    height: 1.53,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.left,
                                ),
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
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.r)
                                )
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.r)
                                ),
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
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.r)
                                )
                              ),
                              child: ClipRRect(
                                 borderRadius: BorderRadius.all(
                                  Radius.circular(8.r)
                                ),
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
            //Explore section starts here
            Container(
              height: 390.h,
              width: double.infinity,
              color: AppColors.isense_white,
              child: Padding(
                padding: EdgeInsets.only(left: 100.w, right: 100.w, top: 30.h),
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
                                return Padding(
                                  padding: EdgeInsets.only(right: 20.w),
                                  child: Container(
                                      height: 300.h,
                                      width: 260.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.r),
                                        image: DecorationImage(
                                            image:
                                                AssetImage(featured_image[index]),
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
                                                onPressed:()=>Get.toNamed(shoppingcart),
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
                                                      color:
                                                          AppColors.isense_white,
                                                      fontWeight: FontWeight.w700,
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
                                                      color:
                                                          AppColors.isense_white,
                                                      fontWeight: FontWeight.w500,
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
                              return Padding(
                                padding: EdgeInsets.only(right: 20.w),
                                child: Container(
                                    height: 300.h,
                                    width: 260.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      image: DecorationImage(
                                          image: AssetImage(popular_image[index]),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Container(
                                      height: 300.h,
                                      width: 260.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.r),
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
                                              onPressed:()=>Get.toNamed(shoppingcart),
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
                                                    color: AppColors.isense_white,
                                                    fontWeight: FontWeight.w700,
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
                                                    color: AppColors.isense_white,
                                                    fontWeight: FontWeight.w500,
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
                                                            fontFamily: 'SF Pro',
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
                                                          FontAwesomeIcons.clock,
                                                          size: 12.w,
                                                          color: Colors.white,
                                                        ),
                                                        SizedBox(
                                                          width: 5.w,
                                                        ),
                                                        Text(
                                                          '60h',
                                                          style: TextStyle(
                                                            fontFamily: 'SF Pro',
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
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
             //Popular section ends here
             //Benifit section starts here
            Container(
              height: 600.h,
              width: 1400.w,
              color: AppColors.isense_white,
              child: Padding(
                padding: EdgeInsets.only(left: 100.w, right: 100.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IsensBenifitText('Benefits from isens.u'),
                          SectionTitle('Why choose us?'),
                          SizedBox(
                            width: 550.w,
                            child: SectionSubtitle(
                                'Pursue a promotion, a raise, or switch careers. 89% of learners who have taken a course report career benefits. Breakthrough pricing on 100% online degrees from top universities.'),
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          Row(
                            children: [
                              BenifitsCard(FontAwesomeIcons.award, '6,800',
                                  'Pro mentors'),
                              BenifitsCard(FontAwesomeIcons.bookOpen, '10,342',
                                  'Skill Courses'),
                              BenifitsCard(FontAwesomeIcons.userGraduate,
                                  '64,800', 'Users'),
                              BenifitsCard(FontAwesomeIcons.video, '155,000',
                                  'HD videos'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 380.h,
                      width: 420.w,
                      child: Image.asset(
                        "assets/images/benifit.png",
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
            ),
            //Benifit section ends here
            //Instructor section starts here
            Stack(
              children: [
                Container(
                  height: 700.h,
                  color: AppColors.isense_white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          InstructorImage(
                              'assets/images/instructor_img1.png'),
                          InstructorImage(
                              'assets/images/instructor_img2.png'),
                          InstructorImage(
                              'assets/images/instructor_img3.png'),
                          InstructorImage(
                              'assets/images/instructor_img4.png'),
                          InstructorImage(
                              'assets/images/instructor_img5.png'),
                          InstructorImage(
                              'assets/images/instructor_img6.png'),
                          InstructorImage(
                              'assets/images/instructor_img7.png'),
                          InstructorImage(
                              'assets/images/instructor_img8.png'),
                        ],
                      ),
                      Row(
                        children: [
                          InstructorImage(
                              'assets/images/instructor_img9.png'),
                          InstructorImage(
                              'assets/images/instructor_img10.png'),
                          InstructorImage(
                              'assets/images/instructor_img3.png'),
                          InstructorImage(
                              'assets/images/instructor_img4.png'),
                          InstructorImage(
                              'assets/images/instructor_img5.png'),
                          InstructorImage(
                              'assets/images/instructor_img6.png'),
                          InstructorImage(
                              'assets/images/instructor_img11.png'),
                          InstructorImage(
                              'assets/images/instructor_img8.png'),
                        ],
                      ),
                      Row(
                        children: [
                          InstructorImage(
                              'assets/images/instructor_img8.png'),
                          InstructorImage(
                              'assets/images/instructor_img11.png'),
                          InstructorImage(
                              'assets/images/instructor_img6.png'),
                          InstructorImage(
                              'assets/images/instructor_img1.png'),
                          InstructorImage(
                              'assets/images/instructor_img8.png'),
                          InstructorImage(
                              'assets/images/instructor_img2.png'),
                          InstructorImage(
                              'assets/images/instructor_img3.png'),
                          InstructorImage(
                              'assets/images/instructor_img4.png'),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 140.h,
                    left: 405.w,
                    child: Container(
                      height: 320.h,
                      width: 580.w,
                      color: Color(0xffE7EDF4),
                      child: Padding(
                        padding: EdgeInsets.all(50.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Become an instructor',
                              style: TextStyle(
                                fontFamily: 'GD Sage',
                                fontSize: 38.sp,
                                color: AppColors.isense_primary,
                                fontWeight: FontWeight.w700,
                                height: 1.65,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 7.h, bottom: 10.h),
                              child: SectionSubtitle(
                                  'Instructors from around the world teach millions of students on sense.u\nWe provide the tools and skills to teach what you love.'),
                            ),
                            Container(
                              height: 50.h,
                              width: 477.w,
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 50.h,
                                    width: 332.w, //
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: AppColors.isense_white,
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.fromLTRB(
                                            8.0, 0.0, .0, 25.h),
                                        border: InputBorder.none,
                                        hintText: 'Enter Your Email',
                                        //labelText:'Enter Your Email',
                                        labelStyle: TextStyle(
                                          fontFamily: 'SF Pro',
                                          fontSize: 15.sp,
                                          color: AppColors.isense_primary,
                                        ),
                                        hintStyle: TextStyle(
                                          fontFamily: 'SF Pro',
                                          fontSize: 14.sp,
                                          color: AppColors.isense_primary
                                              .withOpacity(0.7),
                                        ),
                                        filled: true,
                                        fillColor: AppColors.isense_white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 50.h,
                                    width: 125.w,
                                    color: Color(0xffF9BC7D),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Center(
                                        child: Text(
                                          'Submit',
                                          style: TextStyle(
                                            fontFamily: 'SF Pro',
                                            fontSize: 14.sp,
                                            color: AppColors.isense_white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
             //Instructor section ends here
            //Testimonials section starts here
            Container(
              height: 620.h,
              color: AppColors.sectionBackground,
              child: Padding(
                padding: EdgeInsets.only(
                    top: 80.w, bottom: 70.h, left: 100.w, right: 100.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IsensBenifitText('Our Testimonials'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SectionTitle('What they’re saying'),
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
                    Container(
                      height: 340.h,
                      child: ScrollConfiguration(
                        behavior: MyCustomScrollBehavior(),
                        child: ListView.builder(
                          controller: controller,
                            scrollDirection: Axis.horizontal,
                            itemCount: testimonials_category.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(top: 20.w, right: 30.w),
                                child: Container(
                                  height: 320.h,
                                  width: 360.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.r),
                                    color: AppColors.isense_white,
                                    border: Border.all(
                                        width: 1.0,
                                        color: AppColors.isense_primary
                                            .withOpacity(0.16)),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(30.w),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ReviewHeading(
                                            testimonials_category[index]),
                                        SizedBox(
                                            width: 270.w,
                                            child: SectionSubtitle(
                                                testimonials_des[index])),
                                        Divider(
                                          height: 1,
                                          color: AppColors.sectionBackground,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 44.h,
                                              width: 44.w,
                                              child: Image.asset(
                                                testimonials_image[index],
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15.w,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  name[index],
                                                  style: TextStyle(
                                                    fontFamily: 'SF Pro',
                                                    fontSize: 16.sp,
                                                    color:
                                                        AppColors.isense_primary,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                SectionSubtitle(subject[index])
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //Testimonials section ends here
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
                              onPressed:()=>Get.toNamed(loginbeforehome),
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

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => { 
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    // etc.
  };
}

  Widget ArrowButton(icon, onpress) {
    return Container(
      height: 40.h,
      width: 40.w,
      decoration: BoxDecoration(
          color: AppColors.isense_primary.withOpacity(0.05),
          shape: BoxShape.circle),
      child: Center(
          child: IconButton(
        icon: Icon(icon, size: 16.w, color: AppColors.isense_primary),
        onPressed: onpress,
      )),
    );
  }

  Widget VirticallyDividerWidget() {
    return SizedBox(
        height: 100.h,
        child: VerticalDivider(
          width: 1,
          color: AppColors.sectionBackground.withOpacity(0.3),
        ));
  }


Widget FooterTitle(String title) {
  return Text(
    title,
    style: TextStyle(
      fontFamily: 'GD Sage',
      fontSize: 21.sp,
      color: AppColors.isense_white,
      fontWeight: FontWeight.w700,
    ),
  );
}

Widget FooterDescription(String description) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10.h),
    child: Text(
      description,
      style: TextStyle(
        fontFamily: 'SF Pro',
        fontSize: 14.sp,
        color: AppColors.isense_white,
      ),
    ),
  );
}

Widget IsensBenifitText(String text) {
  return Text(
    text,
    style: TextStyle(
        fontFamily: 'SF Pro', fontSize: 16.sp, color: AppColors.isense_button),
  );
}

Widget InstructorImage(String image) {
  return Container(
    height: 200.h,
    width: 175.w,
    child: Image.asset(
      image,
      fit: BoxFit.cover,
    ),
  );
}

Widget BenifitsCard(icon, String number, String title) {
  return Padding(
    padding: EdgeInsets.only(right: 20.w),
    child: Container(
      height: 190.h,
      width: 135.w,
      decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border.all(color: AppColors.isense_primary.withOpacity(0.16))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 54.h,
            width: 54.w,
            decoration:
                BoxDecoration(color: Color(0xffE7EDF4), shape: BoxShape.circle),
            child: Center(
                child: FaIcon(
              icon,
              size: 16.w,
            )),
          ),
          Text(
            number,
            style: TextStyle(
              fontFamily: 'SF Pro',
              fontSize: 18.sp,
              color: AppColors.isense_primary,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'SF Pro',
              fontSize: 14.sp,
              color: AppColors.isense_primary.withOpacity(0.5),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget SectionDivider() {
  return Container(
    height: 3.h,
    width: 70.w,
    color: Color(0xffF9BC7D),
  );
}

Widget SmallDivider() {
  return Container(
    height: 2.h,
    width: 33.w,
    color: AppColors.dividerBackground,
  );
}

Widget SectionSubtitle(String subtitle) {
  return Text(
    subtitle,
    style: TextStyle(
      fontFamily: 'SF Pro',
      fontSize: 15.sp,
      color: AppColors.isense_primary,
    ),
  );
}

Widget SectionTitle(String title) {
  return Text(
    title,
    style: TextStyle(
      fontFamily: 'GD Sage',
      fontSize: 42.sp,
      color: Color(0xff1b3950),
      fontWeight: FontWeight.w700,
      height: 1.35,
    ),
  );
}
