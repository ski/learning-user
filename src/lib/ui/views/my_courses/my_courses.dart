import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:isence/const/app_colors.dart';
import 'package:isence/ui/route/route.dart';
import 'package:isence/ui/styles/styles.dart';
import 'package:isence/ui/views/home/loginbeforehome.dart';
import 'package:isence/ui/views/profile/profilescreen.dart';
import 'package:isence/ui/views/shop/shoppingcart.dart';
import 'package:isence/ui/widgets/review_heading.dart';

class MyCourses extends StatefulWidget {
  const MyCourses({Key? key}) : super(key: key);

  @override
  _MyCoursesState createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
  String dropdownValue = 'Suhail';
  String dropdownCategory = 'Explore';
  int _currentIndex = 0;
  //category listview
  List<String> categorytext = [
    'Nursing',
    'Pharmacy',
    'Wellness',
    'Doctors',
    'Laboratory'
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
                        Text(
                          'My Courses',
                          style: TextStyle(
                            fontFamily: 'SF Pro',
                            fontSize: 16.sp,
                            color: AppColors.isense_primary,
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
                                DropdownButton<String>(
                                  value: dropdownValue,
                                  icon: FaIcon(
                                    FontAwesomeIcons.caretDown,
                                    color: Colors.white,
                                    size: 15.w,
                                  ),
                                  iconSize: 24.w,
                                  elevation: 16,
                                  hint: Text(
                                    'Suhail',
                                    style: TextStyle(
                                      color: Colors.white,
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
                                      dropdownValue = newValue!;
                                    });
                                  },
                                  items: <String>[
                                    'Suhail',
                                    'Afran',
                                    'Hamidul',
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 10.w),
                                        child: Text(
                                          value,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ),
                                    );
                                  }).toList(),
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
            Stack(
              children: [
                PageNameContainer("My Courses"),
                Positioned(
                  right: 100.w,
                  top: 80.h,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.r),
                          ),
                          color: Colors.white38,
                        ),
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 10.w, right: 10.w, top: 5.h, bottom: 5.h),
                            child: Text(
                              "All Courses",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.r),
                          ),
                          color: Colors.transparent,
                        ),
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 10.w, right: 10.w, top: 5.h, bottom: 5.h),
                            child: Text(
                              "WishList",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.r),
                          ),
                          color: Colors.transparent,
                        ),
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 10.w, right: 10.w, top: 5.h, bottom: 5.h),
                            child: Text(
                              "Archived",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // content section starts
            Container(
              height: 500.h,
              width: ScreenUtil().screenWidth,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 100.w, right: 100.w, top: 50.h, bottom: 50.h),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                  ),
                  scrollDirection: Axis.vertical,
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
                                image: AssetImage(featured_image[index]),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
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
                                      Container(
                                        height: 35.h,
                                        width: 260.w,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(50.r),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              '13.20 Remaining ',
                                              style: TextStyle(
                                                fontFamily: 'SF Pro',
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                            Text(
                                              '45% ',
                                              style: TextStyle(
                                                fontFamily: 'SF Pro',
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                                  color: AppColors.isense_white,
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
                                                  color: AppColors.isense_white,
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
                  },
                ),
              ),
            ),
            // content section ends
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
                            Image.asset(
                              "assets/logo/logofooter.png",
                              height: 32.h,
                              width: 145.w,
                              color: Colors.white,
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
