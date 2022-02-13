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
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class CoursePlayVideo extends StatefulWidget {
  const CoursePlayVideo({Key? key}) : super(key: key);

  @override
  _CoursePlayVideoState createState() => _CoursePlayVideoState();
}

class _CoursePlayVideoState extends State<CoursePlayVideo> {
  String dropdownValue = 'Suhail';
  String selectCategory = 'Nursing';

  bool isClick = false;
  bool onClick = true;
  int currentIndex = 0;
  int length = 4;

  String dropdownCategory = 'Explore';

  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'K18cpp_-gP8',
    params: YoutubePlayerParams(
      playlist: ['nPt8bK2gbaU', 'gQDByCdjUXw'], // Defining custom playlist
      startAt: Duration(seconds: 30),
      showControls: true,
      showFullscreenButton: true,
    ),
  );

  quiz() {
    return showDialog(
      context: context,
      builder: (_) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.r),
            ),
          ),
          child: Container(
            height: 420.h,
            width: ScreenUtil().screenWidth / 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(25.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Chapter 1 Dermatology Quiz Test",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      CircleAvatar(
                        radius: 15.w,
                        backgroundColor: Color(0xFFE7EDF4),
                        child: Center(
                          child: InkWell(
                              onTap: () =>
                                  Navigator.of(context, rootNavigator: true)
                                      .pop(),
                              child: Icon(Icons.close_outlined)),
                        ),
                      ),
                    ],
                  ),
                  Divider(color: Colors.transparent),
                  Text(
                    "Q1: What is the most common causative agent of erythema multiforme (EM)?",
                    style: TextStyle(
                        color: AppColors.isense_primary, fontSize: 14.sp),
                  ),
                  Divider(color: Colors.transparent),
                  Wrap(
                    spacing: 10.w,
                    runSpacing: 10.w,
                    children: [
                      SizedBox(
                        width: 310.w,
                        height: 45.h,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.r),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 15.w,
                                backgroundColor: Color(0xFFE7EDF4),
                                child: Center(
                                  child: Text(
                                    "A",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17.sp),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Penicillin and sulphonamides",
                                style: TextStyle(
                                    color: Color(0xFF1B3950), fontSize: 14.sp),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 310.w,
                        height: 45.h,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.r),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 15.w,
                                backgroundColor: Color(0xFFE7EDF4),
                                child: Center(
                                  child: Text(
                                    "B",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17.sp),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Systemic lupus erythematosus",
                                style: TextStyle(
                                    color: Color(0xFF1B3950), fontSize: 14.sp),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 310.w,
                        height: 45.h,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.r),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 15.w,
                                backgroundColor: Color(0xFFE7EDF4),
                                child: Center(
                                  child: Text(
                                    "C",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17.sp),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "HSV infection",
                                style: TextStyle(
                                    color: Color(0xFF1B3950), fontSize: 14.sp),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 310.w,
                        height: 45.h,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.r),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 15.w,
                                backgroundColor: Color(0xFFE7EDF4),
                                child: Center(
                                  child: Text(
                                    "D",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17.sp),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Malignancy",
                                style: TextStyle(
                                    color: Color(0xFF1B3950), fontSize: 14.sp),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "1/30",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1B3950).withOpacity(0.5),
                            fontSize: 17.sp),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).pop();
                          quizResult();
                        },
                        child: Text("Next"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  quizResult() {
    return showDialog(
      context: context,
      builder: (_) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.r),
            ),
          ),
          child: Container(
            height: 480.h,
            width: ScreenUtil().screenWidth / 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(25.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () =>
                          Navigator.of(context, rootNavigator: true).pop(),
                      child: CircleAvatar(
                        radius: 15.w,
                        backgroundColor: Color(0xFFE7EDF4),
                        child: Center(
                          child: Icon(Icons.close_outlined),
                        ),
                      ),
                    ),
                  ),
                  Divider(color: Colors.transparent),
                  Center(
                    child: Text(
                      "Quiz Result",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(color: Colors.transparent),
                  Center(
                    child: CircularPercentIndicator(
                      radius: 60.r,
                      lineWidth: 13.0,
                      animation: true,
                      percent: 0.7,
                      center: new Text(
                        "80.0%",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.sp),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Color(0xFF00B4B1),
                    ),
                  ),
                  Divider(color: Colors.transparent),
                  Container(
                    height: 100.h,
                    width: 350.w,
                    decoration: BoxDecoration(
                      color: Color(0xFFE7EDF4),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "08",
                              style: TextStyle(
                                fontSize: 28.sp,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1B3950),
                              ),
                            ),
                            Text(
                              "Correct Answer",
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF21293B),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Container(
                          height: 35.h,
                          width: 2.w,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "02",
                              style: TextStyle(
                                fontSize: 28.sp,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1B3950),
                              ),
                            ),
                            Text(
                              "Incorrect Answer",
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF21293B),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.isense_primary,
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 5,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 15.w, right: 15.w, top: 15.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                YoutubePlayerIFrame(
                                  controller: _controller,
                                  aspectRatio: 2.2,
                                ),
                                Divider(color: Colors.transparent),
                                Text(
                                  "What’s happening in Pharma markets?",
                                  style: TextStyle(
                                      fontSize: 23.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Learn about the pharma industry quickly - current trends, medicines, healthcare,\npharmacy markets & major developments.",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                                Divider(),
                                Text(
                                  "740 Comments",
                                  style: TextStyle(
                                      fontSize: 17.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                Divider(color: Colors.transparent),
                                ListTile(
                                  contentPadding:
                                      EdgeInsets.only(left: 0, right: 0),
                                  leading: CircleAvatar(),
                                  title: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Write your comment",
                                      hintStyle: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                    contentPadding:
                                        EdgeInsets.only(left: 0, right: 0),
                                    leading: CircleAvatar(),
                                    title: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Afran",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.sp),
                                        ),
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                        Text(
                                          "1 year ago",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12.sp),
                                        ),
                                      ],
                                    ),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          "Well done Rachel! The home page layout looks good, I think that contact page could use another element to fill up the space a \nbit though. Great job overall, keep it up!",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.sp),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          "Reply",
                                          style:
                                              TextStyle(color: Colors.yellow),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              color: AppColors.sectionBackground,
                              height: 60.h,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Total 10 Chapters",
                                    style: TextStyle(
                                        fontSize: 19.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                itemCount: 7,
                                itemBuilder: (_, index) {
                                  return Container(
                                    color: Colors.white,
                                    child: ExpansionTile(
                                      title: Text(
                                        "Chapter 1: An Introduction to the Global Pharma Industry",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      children: [
                                        ListTile(
                                          onTap: () => quiz(),
                                          dense: true,
                                          leading: CircleAvatar(
                                            radius: 17.r,
                                            child: Icon(
                                              Icons.download_done_outlined,
                                              color: Colors.white,
                                              size: 12,
                                            ),
                                          ),
                                          title: Text(
                                            "What's happening in Pharma markets?",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          subtitle: Text(
                                            "Download Resource",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          trailing: Icon(
                                            Icons.play_arrow,
                                            size: 12,
                                          ),
                                        ),
                                        ListTile(
                                          onTap: () => quiz(),
                                          dense: true,
                                          leading: CircleAvatar(
                                            radius: 17.r,
                                            child: Icon(
                                              Icons.question_answer_outlined,
                                              color: Colors.white,
                                              size: 12,
                                            ),
                                          ),
                                          trailing: Icon(
                                            Icons.play_arrow,
                                            size: 12,
                                          ),
                                          title: Text(
                                            "Take a Quiz",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                },
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
          ],
        ),
      ),
    );
  }
}
