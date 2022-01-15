import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:isence/const/app_colors.dart';
import 'package:isence/ui/route/route.dart';
import 'package:isence/ui/views/home/loginbeforehome.dart';
import 'package:isence/ui/widgets/expandable_title.dart';

class BusinessPage extends StatefulWidget {
  const BusinessPage({Key? key}) : super(key: key);

  @override
  _BusinessPageState createState() => _BusinessPageState();
}

class _BusinessPageState extends State<BusinessPage> {

bool isClick=true;
  
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
                                  dropdownColor:AppColors.isense_button,
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
                                  ].map<DropdownMenuItem<String>>((String value) {
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
            //Header section starts here
            Container(
              height: 520.h,
              color: AppColors.sectionBackground.withOpacity(0.8),
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
                                text: 'Upskill your team with\n',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: 'world-class learning',
                                style: TextStyle(
                                  color: AppColors.isense_primary,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
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
                                'Provide your team access to 4,500+ courses, Specializations,\nand Guided Projects.'),
                          ),
                        ),
                        SizedBox(height: 50.h),
                        Row(
                          children: [
                            Container(
                              height: 60.h,
                              width: 145.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: AppColors.isense_button,
                              ),
                              child: Center(
                                child: Text(
                                  'Buy Now',
                                  style: TextStyle(
                                    fontFamily: 'SF Pro',
                                    fontSize: 16.sp,
                                    color: AppColors.isense_white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('\$319 USD per user for 12 months',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro',
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.isense_primary,
                                    )),
                                Text('14-day refund guarantee',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro',
                                      fontSize: 13.sp,
                                      color: AppColors.isense_primary,
                                    )),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      height: 520.h,
                      child: ShaderMask(
                        child: Image(
                          image: AssetImage('assets/images/business.png'),
                          fit: BoxFit.fitWidth,
                        ),
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                            begin: Alignment(0.75, -0.08),
                            end: Alignment(-0.96, 0.0),
                            colors: [
                              Color(0x00e7edf4),
                              Color(0x52eaeff6),
                              Color(0xd0ebf0f6),
                              Color(0xffebf0f6)
                            ],
                            stops: [0.0, 0.649, 0.819, 1.0],
                          ).createShader(bounds);
                        },
                        blendMode: BlendMode.srcATop,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Header section ends here
            //Top university sections starts here
            Container(
              height: 550.h,
              color: AppColors.isense_white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IsensBenifitText(
                      'Empower your team with content authored by'),
                  SectionTitle('Top universities and companies'),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TopUniversity("assets/logo/university1.png"),
                      TopUniversity("assets/logo/university2.png"),
                      TopUniversity("assets/logo/university3.png"),
                      TopUniversity("assets/logo/university4.png"),
                      TopUniversity("assets/logo/university5.png"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TopUniversity("assets/logo/university6.png"),
                      TopUniversity("assets/logo/university7.png"),
                      TopUniversity("assets/logo/university8.png"),
                      TopUniversity("assets/logo/university9.png"),
                      TopUniversity("assets/logo/university10.png"),
                    ],
                  ),
                ],
              ),
            ),
            //Top university sections ends here
            //Teamworks section starts here
            Container(
              height: 600.h,
              color: AppColors.sectionBackground,
              child: Padding(
                padding: EdgeInsets.only(left: 100.w, right: 100.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 450.h,
                      width: 450.w,
                      child: Image.asset(
                        "assets/images/team.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IsensBenifitText('Benefits from isens.u'),
                        SectionTitle(
                            'Integrate learning\ninto your team’s workflow'),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          children: [
                            TeamWorkLearning(
                                FontAwesomeIcons.laptop,
                                'Flexible learning',
                                'Set your own deadlines and learn anywhere on web or mobile devices'),
                            SizedBox(
                              width: 10.w,
                            ),
                            TeamWorkLearning(
                                FontAwesomeIcons.graduationCap,
                                'Quality content',
                                'Advance personally and professionally with access to quality content'),
                            SizedBox(
                              width: 10.w,
                            ),
                            TeamWorkLearning(
                                FontAwesomeIcons.book,
                                'Learn at all levels',
                                'Access a variety of content ranging from beginner to advanced levels'),
                            SizedBox(
                              width: 10.w,
                            ),
                            TeamWorkLearning(
                                FontAwesomeIcons.file,
                                'Certificates',
                                'Acquire recognized certifications after each course completion'),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            //Teamworks section ends here
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
            //FAQ section starts here
            Container(
              height:isClick? 590.h:1000.h,
              color: AppColors.isense_white,
              child: Padding(
                padding: EdgeInsets.only(left: 100.w, right: 100.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle("Frequently asked questions"),
                    SizedBox(height: 30.h,),
                   isClick? Container(
                     height: 410.h,
                     child: ListView.builder(
                        itemCount: categorytext.length,
                        itemBuilder: (context,index){
                        return  Padding(
                      padding: EdgeInsets.only(top: 10.h,bottom:10.h),
                      child: Container(
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: AppColors.isense_white,
                            border: Border.all(
                                width: 1.0, color: AppColors.sectionBackground),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left:20.w,right: 20.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.infoCircle,
                                      size: 16.w,
                                      color: AppColors.isense_primary,
                                    ),
                                     SizedBox(width: 15.w,),
                                Text(
                                  'What content is available for my team?',
                                  style: TextStyle(
                                    fontFamily: 'SF Pro',
                                    fontSize: 16.sp,
                                    color: AppColors.isense_primary,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                  ],
                                ),
                               
                                TextButton(
                                  onPressed: (){
                                    setState(() {
                                      isClick=!isClick;
                                    });
                                  },
                                  child: FaIcon(
                                    FontAwesomeIcons.plusCircle,
                                    size: 16.w,
                                    color: AppColors.isense_primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                  );
                      }),
                   )
                  : Container(
                    height: 800.h,
                    child: ListView.builder(
                      itemCount: categorytext.length,
                      itemBuilder: (context,index){
                      return Padding(
                     padding: EdgeInsets.only(top: 10.h,bottom:10.h),
                      child: Column(
                          children: [
                            Container(
                              height: 60.h,
                              decoration: BoxDecoration(
                                color: AppColors.isense_white,
                                border: Border.all(
                                    width: 1.0, color: AppColors.sectionBackground),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left:20.w,right: 20.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.infoCircle,
                                          size: 16.w,
                                          color: AppColors.isense_primary,
                                        ),
                                         SizedBox(width: 15.w,),
                                    Text(
                                      'What content is available for my team?',
                                      style: TextStyle(
                                        fontFamily: 'SF Pro',
                                        fontSize: 16.sp,
                                        color: AppColors.isense_primary,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                      ],
                                    ),
                                   
                                    TextButton(
                                      onPressed: (){
                                        setState(() {
                                          isClick=!isClick;
                                        });
                                      },
                                      child: FaIcon(
                                        FontAwesomeIcons.minusCircle,
                                        size: 16.w,
                                        color: AppColors.isense_primary,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 100.h,
                               decoration: BoxDecoration(
                                color: AppColors.isense_white,
                                border: Border.all(
                                    width: 1.0, color: AppColors.sectionBackground),
                              ),
                              child: Padding(
                                padding:  EdgeInsets.all(10.w),
                                child: Flexible(
                                  child: Column(
                                    children: [
                                      Text(
                                        'isense business for Teams is an online learning plan for a company or organization interested in purchasing for their team of 5-125 learners to master new skills. Coursera for Teams provides unlimited access to our catalog of 4,500+ courses, 400 Specializations, and more from top global universities and industries. We support multiple local currencies and offer a 14-Day Refund Guarantee.',
                                        style: TextStyle(
                                      fontFamily: 'SF Pro',
                                      fontSize: 14.sp,
                                      color: AppColors.isense_primary.withOpacity(0.6)
                                        ),
                                                            
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                    );
                    }),
                  )
                  ],
                ),
              ),
            ),           
             //FAQ section starts here
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

Widget TeamWorkLearning(icon, String title, String subtitle) {
  return Container(
    height: 220.h,
    width: 175.w,
    decoration: BoxDecoration(
      color: AppColors.isense_white,
      border: Border.all(
          width: 1.0, color: AppColors.isense_primary.withOpacity(0.16)),
    ),
    child: Padding(
      padding: EdgeInsets.all(12.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 54.h,
            width: 54.w,
            decoration: BoxDecoration(
                color: AppColors.sectionBackground, shape: BoxShape.circle),
            child: Center(
                child:
                    FaIcon(icon, size: 20.w, color: AppColors.isense_button)),
          ),
          ExpandableTitle(title),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 160.w,
              child: Text(
                subtitle,
                style: TextStyle(
                  fontFamily: 'SF Pro',
                  fontSize: 13.sp,
                  color: AppColors.isense_primary.withOpacity(0.5),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget TopUniversity(String img) {
  return Padding(
    padding: EdgeInsets.all(12.w),
    child: Container(
      height: 115.h,
      width: 180.w,
      decoration: BoxDecoration(
        color: AppColors.isense_white,
        border: Border.all(width: 1.0, color: Color(0xffd6e4f0)),
      ),
      child: Padding(
        padding:
            EdgeInsets.only(top: 20.h, bottom: 20.h, left: 15.w, right: 15.w),
        child: Image.asset(
          img,
          fit: BoxFit.contain,
        ),
      ),
    ),
  );
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
