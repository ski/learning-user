import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:isence/const/app_colors.dart';
import 'package:isence/ui/route/route.dart';
import 'package:isence/ui/styles/styles.dart';
import 'package:isence/ui/views/home/loginbeforehome.dart';
import 'package:isence/ui/widgets/angel_icon.dart';
import 'package:isence/ui/widgets/clickable_course_card.dart';
import 'package:isence/ui/widgets/course_card_review.dart';
import 'package:isence/ui/widgets/course_includes.dart';
import 'package:isence/ui/widgets/learn_card.dart';
import 'package:isence/ui/widgets/post_identity.dart';
import 'package:isence/ui/widgets/regular_text.dart';
import 'package:isence/ui/widgets/review_description.dart';
import 'package:isence/ui/widgets/review_heading.dart';
import 'package:isence/ui/widgets/textfield_headrer.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  _CourseDetailsState createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  String dropdownValue = 'Suhail';
  String selectCategory = 'Nursing';

  var _radioSelected;
  String? _radioVal;

  bool _check = true;
  bool isClick = false;
  bool onClick = true;
  int currentIndex = 0;
  int length = 4;

  String dropdownCategory = 'Explore';
  int _currentIndex = 0;
  //popular courses
  List<String> popular_image = [
    "assets/images/three.png",
    "assets/images/four.png",
    "assets/images/one.png",
    "assets/images/two.png",
    "assets/images/three.png"
  ];
  final ScrollController controller = ScrollController();
  //category listview
  List<String> categorytext = [
    'Nursing',
    'Pharmacy',
    'Wellness',
    'Doctors',
    'Laboratory'
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
      body: Container(
        height: ScreenUtil().screenHeight,
        width: ScreenUtil().screenWidth,
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

            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          Container(
                            height: 355.h,
                            width: ScreenUtil().screenWidth,
                            color: AppColors.isense_primary,
                            child: Padding(
                              padding: EdgeInsets.all(30.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Your Guide to the Pharmaceutical Industry',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro',
                                      fontSize: 28,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      height: 0.7142857142857143,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.left,
                                  ),
                                  TextfieldHeaderTwo(
                                      'Learn about the pharma industry quickly - current trends, medicines, healthcare, pharmacy markets & major developments.'),
                                  Row(
                                    children: [
                                      CreatePostIdentityTwo(
                                          FontAwesomeIcons.user,
                                          'Created by: Suhail'),
                                      CreatePostIdentityTwo(
                                          FontAwesomeIcons.globe, 'ENGLSIH'),
                                      CreatePostIdentityTwo(
                                          FontAwesomeIcons.calendar,
                                          'March 2021'),
                                    ],
                                  ),
                                  Divider(color: Colors.transparent),
                                  OutlinedButton(
                                      onPressed: () {},
                                      child: Text("Add To Wishlist"))
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 70.h,
                            right: 100.w,
                            child: Container(
                              height: 600.h,
                              width: 350.w,
                              decoration: CardBox(),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(4.r),
                                              topRight: Radius.circular(4.r),
                                            ),
                                            gradient: LinearGradient(
                                              begin: Alignment(-1.32, -1.62),
                                              end: Alignment(1.64, 1.79),
                                              colors: [
                                                Color(0x95000000),
                                                Color(0x9500599f)
                                              ],
                                              stops: [0.0, 1.0],
                                            ),
                                          ),
                                          child: Image.asset(
                                            'assets/images/review.png',
                                            fit: BoxFit.fitWidth,
                                            height: 230.h,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20.w),
                                    child: Text(
                                      '\$590.00',
                                      style: TextStyle(
                                        fontFamily: 'SF Pro',
                                        fontSize: 28,
                                        color: const Color(0xff1b3950),
                                        fontWeight: FontWeight.w700,
                                        height: 0.7142857142857143,
                                      ),
                                      // textHeightBehavior: TextHeightBehavior(
                                      //     applyHeightToFirstAscent: false),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 20.w,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ElevatedButton(
                                            onPressed: () {},
                                            child: Text("Buy Now")),
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                        OutlinedButton(
                                            onPressed: () {},
                                            child: Text("Add To Cart")),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20.w),
                                    child: Text(
                                      'This course includes:',
                                      style: TextStyle(
                                        fontFamily: 'SF Pro',
                                        fontSize: 17,
                                        color: const Color(0xff1b3950),
                                        fontWeight: FontWeight.w600,
                                        height: 1.17,
                                      ),
                                      // textHeightBehavior: TextHeightBehavior(
                                      //     applyHeightToFirstAscent: false),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  CourseIncludes(FontAwesomeIcons.tv,
                                      '44 hours on-demand video'),
                                  CourseIncludes(
                                      FontAwesomeIcons.folder, '73 articles'),
                                  CourseIncludes(FontAwesomeIcons.download,
                                      '38 downloadable resources'),
                                  CourseIncludes(FontAwesomeIcons.infinity,
                                      'Full lifetime access'),
                                  CourseIncludes(FontAwesomeIcons.phone,
                                      'Full lifetime access'),
                                  CourseIncludes(FontAwesomeIcons.certificate,
                                      'Certificate of completion'),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.w),
                        child: Container(
                          width: ScreenUtil().screenWidth / 1.7,
                          child: Column(
                            children: [
                              Container(
                                height: 235.h,
                                width: ScreenUtil().screenWidth,
                                decoration: CardBox(),
                                child: Padding(
                                  padding: EdgeInsets.all(20.w),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ReviewHeading('What you’ll learn'),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          LearnCard(context,
                                              'Learn essential facts about medicines and the structure of the pharmaceutical industry around the world'),
                                          LearnCard(context,
                                              'Learn essential facts about medicines and the structure of the pharmaceutical industry around the world'),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          LearnCard(context,
                                              'Learn essential facts about medicines and the structure of the pharmaceutical industry around the world'),
                                          LearnCard(context,
                                              'Learn essential facts about medicines and the structure of the pharmaceutical industry around the world'),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          LearnCard(context,
                                              'Learn essential facts about medicines and the structure of the pharmaceutical industry around the world'),
                                          LearnCard(context,
                                              'Learn essential facts about medicines and the structure of the pharmaceutical industry around the world'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Container(
                                height: 520.h,
                                decoration: CardBox(),
                                child: Padding(
                                  padding: EdgeInsets.all(20.w),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 20.h, bottom: 20.h),
                                        child: ReviewHeading('Description'),
                                      ),
                                      ReviewDescription(
                                          'hugely rewarding professionally, personally and financially! There are tremendous opportunities for those that are able to develop their expertise and work closely with the pharma industry.\n\nBy the end of this course you will be able to talk confidently about the pharmaceutical industry during a presentation, in an interview, with co-workers, with customers or in general conversation with friends.\n\nPhil Yates has been working with the global pharmaceutical industry for over 30 years. He is an Associate Member of the Healthcare Communications Association, an Advisory Board Member of AllaboutMedicalSales and an author on training matters for Pharmafocus and Pf magazines and a judge for the Pf Awards. \n\n'),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 15.h, bottom: 20.h),
                                        child: Text(
                                          'After taking this course you will:',
                                          style: TextStyle(
                                            fontFamily: 'SF Pro',
                                            fontSize: 14.sp,
                                            color: AppColors.isense_primary,
                                            fontWeight: FontWeight.w600,
                                            height: 1.42,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          AngelIcon(),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                          ReviewDescription(
                                              'Be able to explain the structure and function of the global pharmaceutical industry')
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          AngelIcon(),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                          ReviewDescription(
                                              'Be able to explain the structure and function of the global pharmaceutical industry')
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          AngelIcon(),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                          ReviewDescription(
                                              'Be able to explain the structure and function of the global pharmaceutical industry')
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          AngelIcon(),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                          ReviewDescription(
                                              'Be able to explain the structure and function of the global pharmaceutical industry')
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ReviewHeading('Course content'),
                                  Text(
                                    '8 sections • 14 lectures • 42m total length',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro',
                                      fontSize: 12.sp,
                                      color: AppColors.isense_primary,
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              CourseCardReview(
                                'Part 1: An Introduction to the Global Pharma Industry',
                                '2 lectures',
                                '6 min',
                              ),
                              Container(
                                height: isClick ? 48.h : 178.h,
                                decoration: CardBox(),
                                child: isClick
                                    ? Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.w, right: 15.w),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      isClick = !isClick;
                                                    });
                                                  },
                                                  child: Container(
                                                    height: 23,
                                                    width: 23,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      //borderRadius: BorderRadius.all(Radius.elliptical(999, 999)),
                                                      color: Color(0xffe7edf4),
                                                    ),
                                                    child: Center(
                                                        child: FaIcon(
                                                      isClick
                                                          ? FontAwesomeIcons
                                                              .chevronDown
                                                          : FontAwesomeIcons
                                                              .chevronUp,
                                                      size: 12.w,
                                                      color: AppColors
                                                          .isense_primary,
                                                    )),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 15.w,
                                                ),
                                                Text(
                                                  'Part 2: An Introduction to the Global Pharma Industry',
                                                  style: TextStyle(
                                                    fontFamily: 'SF Pro',
                                                    fontSize: 14.sp,
                                                    color: AppColors
                                                        .isense_primary,
                                                    fontWeight: FontWeight.w500,
                                                    // height: 1.4285714285714286,
                                                  ),
                                                  //textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Row(
                                                  children: [
                                                    FaIcon(
                                                      FontAwesomeIcons.folder,
                                                      size: 13.w,
                                                      color: AppColors
                                                          .isense_primary,
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    RegularText('2 lectures'),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: 15.w,
                                                ),
                                                Row(
                                                  children: [
                                                    FaIcon(
                                                      FontAwesomeIcons.times,
                                                      size: 13.w,
                                                      color: AppColors
                                                          .isense_primary,
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    RegularText('6 min'),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    : ClickableCourseCard(
                                        'What’s happening in Pharma markets?',
                                        'Preview',
                                        '4:15',
                                        'How do regions differ?',
                                        'Preview',
                                        '4:15',
                                        'Reinforce your knowledge!',
                                        '5 questions'),
                              ),
                              CourseCardReview(
                                'Part 3: An Introduction to the Global Pharma Industry',
                                '2 lectures',
                                '6 min',
                              ),
                              CourseCardReview(
                                'Part 4: An Introduction to the Global Pharma Industry',
                                '2 lectures',
                                '6 min',
                              ),
                              CourseCardReview(
                                'Part 5: An Introduction to the Global Pharma Industry',
                                '2 lectures',
                                '6 min',
                              ),
                              CourseCardReview(
                                'Part 6: An Introduction to the Global Pharma Industry',
                                '2 lectures',
                                '6 min',
                              ),
                              CourseCardReview(
                                'Part 7: An Introduction to the Global Pharma Industry',
                                '2 lectures',
                                '6 min',
                              ),
                              CourseCardReview(
                                'Part 8: An Introduction to the Global Pharma Industry',
                                '2 lectures',
                                '6 min',
                              ),
                              Container(
                                height: 270.h,
                                decoration: CardBox(),
                                child: Padding(
                                  padding: EdgeInsets.all(20.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 10.h, bottom: 10.h),
                                        child: ReviewHeading('Instructor'),
                                      ),
                                      Divider(
                                        height: 1.h,
                                        color: Color(0xffE7EDF4),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      // Adobe XD layer: 'young-student-woman…' (shape)
                                      Row(
                                        children: [
                                          Container(
                                            height: 39,
                                            width: 39,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                              'assets/images/instructor.png',
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
                                                'Phil Yates',
                                                style: TextStyle(
                                                  fontFamily: 'SF Pro',
                                                  fontSize: 16.sp,
                                                  color:
                                                      AppColors.isense_primary,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.25,
                                                ),
                                              ),
                                              RegularText(
                                                  'Professional Trainer, Facilitator & Coach')
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Flexible(
                                        child: Column(
                                          children: [
                                            RegularText(
                                                "Phil Yates is an accomplished presenter, trainer, facilitator and coach who has acquired a reputation for delivering training of the highest quality. Phil is Managing Director of Coachwise Consultants Ltd. and he has worked with the pharmaceutical industry for over 30 years.With a degree in Biological Sciences and a Postgraduate Diploma in Education, Phil started teaching Biology & Physics in the UK before joining the pharmaceutical industry within which he held roles within sales, marketing, training and management."),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Container(
                                height: 270.h,
                                decoration: CardBox(),
                                child: Padding(
                                  padding: EdgeInsets.all(20.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 10.h, bottom: 10.h),
                                        child: Row(
                                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                          children: [
                                            ReviewHeading('Reviews'),
                                            Text(
                                              "200 People Rated",
                                              style: TextStyle(
                                                  fontFamily: 'SF Pro',
                                                  fontSize: 12.sp,
                                                  color:
                                                      AppColors.isense_primary,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.1),
                                              textHeightBehavior:
                                                  TextHeightBehavior(
                                                      applyHeightToFirstAscent:
                                                          false),
                                              textAlign: TextAlign.left,
                                            )
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        height: 1.h,
                                        color: Color(0xffE7EDF4),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      // Adobe XD layer: 'young-student-woman…' (shape)
                                      Row(
                                        children: [
                                          Container(
                                            height: 39,
                                            width: 39,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                              'assets/images/instructor.png',
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
                                                'Phil Yates',
                                                style: TextStyle(
                                                  fontFamily: 'SF Pro',
                                                  fontSize: 16.sp,
                                                  color:
                                                      AppColors.isense_primary,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.25,
                                                ),
                                              ),
                                              RegularText(
                                                  'Professional Trainer, Facilitator & Coach')
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Flexible(
                                        child: Column(
                                          children: [
                                            RegularText(
                                                "Phil Yates is an accomplished presenter, trainer, facilitator and coach who has acquired a reputation for delivering training of the highest quality. Phil is Managing Director of Coachwise Consultants Ltd. and he has worked with the pharmaceutical industry for over 30 years.With a degree in Biological Sciences and a Postgraduate Diploma in Education, Phil started teaching Biology & Physics in the UK before joining the pharmaceutical industry within which he held roles within sales, marketing, training and management."),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                                      BorderRadius.circular(
                                                          10.r),
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment(-0.06, -1.0),
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
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Get.toNamed(
                                                                shoppingcart),
                                                        child: Container(
                                                          height: 35,
                                                          width: 35,
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      0.25),
                                                              shape: BoxShape
                                                                  .circle),
                                                          child: Center(
                                                              child: Icon(
                                                                  Icons
                                                                      .shopping_cart_outlined,
                                                                  size: 18.w,
                                                                  color: Colors
                                                                      .white)),
                                                        ),
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            '\$200',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'SF Pro',
                                                              fontSize: 19.sp,
                                                              color: AppColors
                                                                  .isense_white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 7.h,
                                                          ),
                                                          Text(
                                                            featured_courses[
                                                                index],
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'SF Pro',
                                                              fontSize: 14.sp,
                                                              color: AppColors
                                                                  .isense_white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
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
                                                                    Icons
                                                                        .folder,
                                                                    size: 12.w,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  SizedBox(
                                                                    width: 5.w,
                                                                  ),
                                                                  Text(
                                                                    '15 Lessons ',
                                                                    style:
                                                                        TextStyle(
                                                                      fontFamily:
                                                                          'SF Pro',
                                                                      fontSize:
                                                                          12.sp,
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
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  SizedBox(
                                                                    width: 5.w,
                                                                  ),
                                                                  Text(
                                                                    '60h',
                                                                    style:
                                                                        TextStyle(
                                                                      fontFamily:
                                                                          'SF Pro',
                                                                      fontSize:
                                                                          12.sp,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                    color: AppColors.sectionBackground
                                        .withOpacity(0.2),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FooterTitle('Contact'),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      SmallDivider(),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 20.h, bottom: 10.h),
                                        child: FooterDescription(
                                            'iSense Bio FZE, Office 13, The Iridium Building, Umm\nSuqeim Road, Al Barsha.Dubai, UAE'),
                                      ),
                                      FooterDescription('info@isense.u'),
                                      FooterDescription('+44 7958 557852')
                                    ],
                                  ),
                                  VirticallyDividerWidget(),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              FooterDescription('FAQ'),
                                              FooterDescription('Terms'),
                                              FooterDescription(
                                                  'Privacy policy '),
                                              FooterDescription('Sitemap'),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  VirticallyDividerWidget(),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              FooterDescription('Instagram'),
                                              FooterDescription('Facebook'),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 50.w,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                      ),
                      //Footer section ends here
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
