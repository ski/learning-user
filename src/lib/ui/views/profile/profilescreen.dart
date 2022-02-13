import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:isence/const/app_colors.dart';
import 'package:isence/ui/route/route.dart';
import 'package:isence/ui/styles/styles.dart';
import 'package:isence/ui/views/home/loginbeforehome.dart';
import 'package:isence/ui/views/shop/checkout.dart';
import 'package:isence/ui/views/shop/shoppingcart.dart';
import 'package:isence/ui/widgets/instructor_button.dart';
import 'package:isence/ui/widgets/review_heading.dart';
import 'package:isence/ui/widgets/textfield_headrer.dart';
import 'package:dotted_border/dotted_border.dart';

class MainProfilePage extends StatefulWidget {
  const MainProfilePage({Key? key}) : super(key: key);

  @override
  _MainProfilePageState createState() => _MainProfilePageState();
}

class _MainProfilePageState extends State<MainProfilePage> {
  String dropdownValue = 'Suhail';
  String dropdownCategory = 'Explore';
  int _currentIndex = 0;

  currentTitle() {
    if (_currentIndex == 0) {
      return "Your Profile";
    } else if (_currentIndex == 1) {
      return "My Certificates";
    } else if (_currentIndex == 2) {
      return "Payment Methods";
    } else if (_currentIndex == 3) {
      return "Help";
    } else if (_currentIndex == 4) {
      return "Delete Account";
    }
  }

  currentScreen() {
    if (_currentIndex == 0) {
      return ProfileDetails();
    } else if (_currentIndex == 1) {
      return Certificates();
    } else if (_currentIndex == 2) {
      return PaymentMethods();
    } else if (_currentIndex == 3) {
      return Help();
    } else if (_currentIndex == 4) {
      return DeleteAccount();
    }
  }

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
            
            PageNameContainer(currentTitle()),
            Container(
              height: 690.h,
              width: double.infinity,
              color: AppColors.scafFoldBackground,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 100.w, right: 100.w, top: 50.h, bottom: 50.h),
                child: Container(
                  decoration: boxDecoration,
                  child: Padding(
                    padding: EdgeInsets.all(15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 250.w,
                          color: AppColors.sectionBackground,
                          child: Padding(
                            padding: EdgeInsets.all(30.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 40.w,
                                  backgroundImage: AssetImage(
                                      'assets/images/instructor_img5.png'),
                                  backgroundColor: Colors.transparent,
                                ),
                                ReviewHeading('Dr. Suhail Manzoor'),
                                Text(
                                  'Creative Director ',
                                  style: TextStyle(
                                    fontFamily: 'SF Pro',
                                    fontSize: 14.sp,
                                    color: AppColors.isense_primary,
                                  ),
                                ),
                                Container(
                                    height: 1,
                                    width: 50.w,
                                    color: AppColors.isense_button),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _currentIndex = 0;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.user,
                                        size: 17.w,
                                        color: AppColors.isense_primary,
                                      ),
                                      SizedBox(
                                        width: 12.w,
                                      ),
                                      MediumText('Profile'),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.folder,
                                      size: 17.w,
                                      color: AppColors.isense_primary,
                                    ),
                                    SizedBox(
                                      width: 12.w,
                                    ),
                                    MediumText('My learning'),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _currentIndex = 1;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.certificate,
                                        size: 17.w,
                                        color: AppColors.isense_primary,
                                      ),
                                      SizedBox(
                                        width: 12.w,
                                      ),
                                      MediumText('My Certificates'),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _currentIndex = 2;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.creditCard,
                                        size: 17.w,
                                        color: AppColors.isense_primary,
                                      ),
                                      SizedBox(
                                        width: 12.w,
                                      ),
                                      MediumText('Payment Method'),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _currentIndex = 3;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.headset,
                                        size: 17.w,
                                        color: AppColors.isense_primary,
                                      ),
                                      SizedBox(
                                        width: 12.w,
                                      ),
                                      MediumText('Help'),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _currentIndex = 4;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.trash,
                                        size: 17.w,
                                        color: AppColors.isense_primary,
                                      ),
                                      SizedBox(
                                        width: 12.w,
                                      ),
                                      MediumText('Delete Account'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            // width: double.infinity,
                            color: AppColors.isense_white,
                            child: currentScreen(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
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

Widget PageNameContainer(String pagename) {
  return Container(
    color: AppColors.isense_primary,
    width: double.infinity,
    child: Container(
      height: 200.h,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/cartbackground.png'),
              fit: BoxFit.fitWidth)),
      child: Padding(
        padding: EdgeInsets.only(left: 100.w),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            pagename,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: 'GD Sage',
              fontSize: 51.sp,
              color: AppColors.isense_white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    ),
  );
}

Widget CertificateImage(String image) {
    return Container(
      height: 170.h,
      width: 260.w,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color:AppColors.isense_primary.withOpacity(0.2)
        )
      ),
      child: Image.asset(image,fit: BoxFit.cover,),
    );
  }

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.isense_white,
        child: Padding(
          padding: EdgeInsets.all(40.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReviewHeading('Profile Details'),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 3.h,
                width: 46.w,
                color: AppColors.isense_button,
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MediumText('Name'),
                      CheckoutTextfield(400.w, TextInputType.text, 'Suhail'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MediumText('Email'),
                      CheckoutTextfield(
                          400.w, TextInputType.text, 'suhailmanzoor@gmail.com'),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MediumText('Professional Headline'),
                      CheckoutTextfield(
                          400.w, TextInputType.text, 'Creative Director '),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MediumText('Language'),
                      CheckoutTextfield(
                          400.w, TextInputType.text, 'English, Arabic'),
                    ],
                  ),
                ],
              ),
              Container(
                height: 45.h,
                decoration: BoxDecoration(
                    color: AppColors.isense_white,
                    border: Border.all(
                        color: AppColors.isense_primary.withOpacity(0.2),
                        width: 1)),
                child: Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 35.h,
                      width: 130.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.0),
                        color: AppColors.sectionBackground,
                      ),
                      child: Center(child: TextfieldHeader('Choose picture')),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25.h, bottom: 20.h),
                child: Container(
                  height: 1.h,
                  color: AppColors.isense_primary.withOpacity(0.1),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InstructorButton(
                  'Save',
                  AppColors.isense_button,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Certificates extends StatelessWidget {
  const Certificates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        color: AppColors.isense_white,
        child: Padding(
          padding: EdgeInsets.only(left: 40.w, right: 40.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReviewHeading('Payment Methods'),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 3.h,
                width: 46.w,
                color: AppColors.isense_button,
              ),
              SizedBox(
                height: 30.h,
              ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 CertificateImage('assets/images/certificateone.png'),
                 CertificateImage('assets/images/certificatetwo.png'),
                 CertificateImage('assets/images/certificatethree.png'),
               ],
             ),
             SizedBox(height: 40.h,),
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 CertificateImage('assets/images/certificateone.png'),
                 CertificateImage('assets/images/certificatetwo.png'),
                 CertificateImage('assets/images/certificatethree.png'),
               ],
             ),
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.isense_white,
        child: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReviewHeading('Payment Methods'),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 3.h,
                width: 46.w,
                color: AppColors.isense_button,
              ),
              SizedBox(
                height: 30.h,
              ),
              DottedBorder(
                color: AppColors.isense_primary.withOpacity(0.35),
                radius: Radius.circular(10),
                borderType: BorderType.RRect,
                dashPattern: [4,3],
                strokeWidth: 1,
                child: Container(
                  height: 260.h,
                  child: Padding(
                    padding:  EdgeInsets.only(left:30.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '1 American Bank',
                          style: TextStyle(
                            fontFamily: 'SF Pro',
                            fontSize: 16.sp,
                            color: AppColors.isense_primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 15.h,),
                        MediumText('Card on Name'),
                        CheckoutTextfield(
                            400.w, TextInputType.text, 'Suhail Mazoor'),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MediumText('Card Number'),
                                CheckoutTextfield(400.w, TextInputType.number,
                                    '1232 1234 2334 1234'),
                              ],
                            ),
                            SizedBox(width: 20.w,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MediumText('CVV'),
                                CheckoutTextfield(
                                    90.w, TextInputType.number, '032'),
                              ],
                            ),
                            SizedBox(width: 20.w,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MediumText('Exp Date'),
                                CheckoutTextfield(
                                    90.w, TextInputType.number, '07/21'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
             SizedBox(height: 100.h,),
              Align(
                alignment: Alignment.bottomRight,
                child: InstructorButton(
                  'Save',
                  AppColors.isense_button,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.isense_white,
        child: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReviewHeading('Contact us'),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 3.h,
                width: 46.w,
                color: AppColors.isense_button,
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MediumText('First Name'),
                      CheckoutTextfield(400.w, TextInputType.text, 'Suhail'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MediumText('Email'),
                      CheckoutTextfield(
                          400.w, TextInputType.text, 'Manzoor@gmail.com'),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MediumText('Subject'),
                      CheckoutTextfield(
                          400.w, TextInputType.text, 'Issue with Payment'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MediumText('Attachment'),
                      Container(
                        height: 45.h,
                        width: 400.w,
                        decoration: BoxDecoration(
                            color: AppColors.isense_white,
                            border: Border.all(
                                color:
                                    AppColors.isense_primary.withOpacity(0.2),
                                width: 1)),
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.w),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 32.h,
                              width: 115.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2.0),
                                color: AppColors.sectionBackground,
                              ),
                              child:
                                  Center(child: TextfieldHeader('Choose file')),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              MediumText('Describe Issue'),
              Padding(
                padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
                child: Container(
                  height: 120.h,
                  decoration: BoxDecoration(
                      color: AppColors.isense_white,
                      border: Border.all(
                          color: AppColors.isense_primary.withOpacity(0.2),
                          width: 1)),
                  child: Padding(
                    padding: EdgeInsets.all(8.w),
                    child: TextField(
                      maxLines: 8,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration.collapsed(
                        hintText:
                            'Hello There,\n\nMy name is Suhail, I have a issue with payment method ',
                        hintStyle: TextStyle(
                          fontFamily: "SF Pro",
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.isense_primary,
                        ),
                        filled: true,
                        border: InputBorder.none,
                        fillColor: AppColors.isense_white,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InstructorButton(
                  'Save',
                  AppColors.isense_button,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.isense_white,
        child: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 50.h),
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReviewHeading('Delete Account'),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 3.h,
                width: 46.w,
                color: AppColors.isense_button,
              ),
              SizedBox(
                height: 12.h,
              ),
              IsensBenifitText('We will miss you, Suhail'),
              Padding(
                padding: EdgeInsets.only(top: 15.h, bottom: 25.h),
                child: Container(
                  height: 120.h,
                  decoration: BoxDecoration(
                      color: AppColors.isense_white,
                      border: Border.all(
                          color: AppColors.isense_primary.withOpacity(0.2),
                          width: 1)),
                  child: Padding(
                    padding: EdgeInsets.all(8.w),
                    child: TextField(
                      maxLines: 8,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration.collapsed(
                        hintText: 'How can we improve it?',
                        hintStyle: TextStyle(
                          fontFamily: "SF Pro",
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.isense_primary,
                        ),
                        filled: true,
                        border: InputBorder.none,
                        fillColor: AppColors.isense_white,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 45.h,
                  width: 180.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.r),
                      color: Color(0xffF85B5B)),
                  child: Center(
                    child: Text(
                      'Delete My Account',
                      style: TextStyle(
                        fontFamily: 'SF Pro',
                        fontSize: 15.sp,
                        color: AppColors.isense_white,
                        fontWeight: FontWeight.w600,
                        height: 1.53,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
