import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:isence/const/app_colors.dart';
import 'package:isence/ui/route/route.dart';
import 'package:isence/ui/styles/styles.dart';
import 'package:isence/ui/views/home/loginbeforehome.dart';
import 'package:isence/ui/views/profile/profilescreen.dart';
import 'package:isence/ui/views/shop/checkout.dart';
import 'package:isence/ui/widgets/expandable_title.dart';
import 'package:isence/ui/widgets/regular_text.dart';
import 'package:isence/ui/widgets/review_heading.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  String dropdownValue = 'Suhail';
  String dropdownCategory = 'Explore';
  bool _switchValue=true;

  List<String> cart_image = [
    "assets/images/three.png",
    "assets/images/four.png",
    "assets/images/one.png"
  ];
  List<String> price = ['\$994', '\$654', '\$100'];

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
            PageNameContainer('Shopping cart'),
            Container(
              height: 690.h,
              color: AppColors.scafFoldBackground,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 100.w, right: 100.w, top: 50.h, bottom: 50.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReviewHeading('3 Courses in Cart'),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      height: 545.h,
                      decoration: boxDecoration,
                      child: Padding(
                        padding:
                            EdgeInsets.all(15.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 455.h,
                                  width: 750.w,
                                  child: ListView.builder(
                                      scrollDirection: Axis.vertical,
                                      itemCount: cart_image.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 12.h),
                                          child: Container(
                                            height: 135.h,
                                            width: 685.w,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6.r),
                                              color: AppColors.isense_white,
                                              border: Border.all(
                                                  width: 1.0,
                                                  color: AppColors.isense_button
                                                      .withOpacity(0.16)),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 135.h,
                                                  width: 130.w,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            cart_image[index]),
                                                        fit: BoxFit.fitWidth),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      bottomLeft:
                                                          Radius.circular(4.0),
                                                    ),
                                                    gradient: LinearGradient(
                                                      begin: Alignment(
                                                          -1.32, -1.62),
                                                      end:
                                                          Alignment(1.64, 1.79),
                                                      colors: [
                                                        const Color(0x95000000),
                                                        const Color(0x9500599f)
                                                      ],
                                                      stops: [0.0, 1.0],
                                                    ),
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(12.w),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Blockchain applications in Food Safety, Healthcare & Pharma',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'SF Pro',
                                                            fontSize: 16.sp,
                                                            color: AppColors
                                                                .isense_primary,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            height: 1.25,
                                                          ),
                                                        ),
                                                        RegularText(
                                                            'Best course to learn about Blockchain Business Applications in Pharma, Food Safety, Healthcare and Insurance Industries'),
                                                        SizedBox(
                                                          height: 12.h,
                                                        ),
                                                        Container(
                                                          height: 20.h,
                                                          width: 150.w,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2.0),
                                                            color: AppColors
                                                                .isense_primary,
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              'Created byRoohi Bansal',
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'SF Pro',
                                                                fontSize: 12.sp,
                                                                color: AppColors
                                                                    .isense_white,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 12.w,
                                                      right: 15.w,
                                                      bottom: 12.w),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      ReviewHeading(
                                                          price[index]),
                                                      Container(
                                                        height: 20.h,
                                                        width: 65.w,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.r),
                                                          color:
                                                              Color(0x22ff0000),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            'Remove',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'SF Pro',
                                                              fontSize: 12.sp,
                                                              color: Color(
                                                                  0xffff0000),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      RegularText(
                                                          'Add to Wishlist')
                                                    ],
                                                  ),
                                                ),
                                                // SizedBox(
                                                //   width: 15.w,
                                                // ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }),
                                ),
                                Container(
                                  height: 45.h,
                                  width: 750.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.r),
                                    color: AppColors.isense_white,
                                    border: Border.all(
                                        width: 1.0,
                                        color: AppColors.isense_button
                                            .withOpacity(0.16)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      
                                      Row(
                                        children: [
                                          SizedBox(width: 15.w,),
                                          FaIcon(
                                            FontAwesomeIcons.award,
                                            size: 20.w,
                                            color: AppColors.dividerBackground,
                                          ),
                                          SizedBox(width: 12.w,),
                                          ExpandableTitle(
                                          'Enable certificate for above courses'),
                                        ],
                                      ),
                                      
                                      Transform.scale(
                                        scale: 0.5,
                                        child: CupertinoSwitch(
                                          value: _switchValue,
                                          onChanged: (value) {
                                            setState(() {
                                              _switchValue = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 30.w,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 15.w),
                              child: Container(
                                height: 510.h,
                                width: 320.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.r),
                                  color: AppColors.isense_white,
                                  border: Border.all(
                                      width: 1.0,
                                      color: AppColors.isense_button
                                          .withOpacity(0.16)),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(15.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Promocode',
                                        style: TextStyle(
                                          fontFamily: 'SF Pro',
                                          fontSize: 15.sp,
                                          color: AppColors.isense_primary,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 10.h, bottom: 30.h),
                                        child: Container(
                                          height: 40.h,
                                          width: 285.w,
                                          color: Colors.white,
                                          child: Row(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 40.h,
                                                width: 200.w,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 1,
                                                      color: AppColors
                                                          .sectionBackground),
                                                  color: AppColors.isense_white,
                                                ),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    contentPadding:
                                                        EdgeInsets.fromLTRB(
                                                            8.0, 0.0, .0, 26.w),
                                                    border: InputBorder.none,
                                                    hintText: 'Enter Coupon',
                                                    //labelText:'Enter Your Email',
                                                    labelStyle: TextStyle(
                                                      fontFamily: 'SF Pro',
                                                      fontSize: 14.sp,
                                                      color: AppColors
                                                          .isense_primary,
                                                    ),
                                                    hintStyle: TextStyle(
                                                      fontFamily: 'SF Pro',
                                                      fontSize: 13.sp,
                                                      color: AppColors
                                                          .isense_primary
                                                          .withOpacity(0.7),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        AppColors.isense_white,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 40.h,
                                                width: 85.w,
                                                color: AppColors.isense_button,
                                                child: TextButton(
                                                  onPressed: () {},
                                                  child: Center(
                                                    child: Text(
                                                      'Apply',
                                                      style: TextStyle(
                                                        fontFamily: 'SF Pro',
                                                        fontSize: 14.sp,
                                                        color: AppColors
                                                            .isense_white,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          MediumText('Certification'),
                                          MediumText('\$686'),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          MediumText('Courses 3'),
                                          MediumText('\$2,680'),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          MediumText('Tax'),
                                          MediumText('\$212'),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          MediumText('Other Charges'),
                                          MediumText('\$10'),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Divider(
                                        thickness: 1,
                                        color: AppColors.isense_primary,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 10.h, bottom: 10.h),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Total',
                                              style: TextStyle(
                                                fontFamily: 'SF Pro',
                                                fontSize: 16.sp,
                                                color: AppColors.isense_primary,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              '\$3,394',
                                              style: TextStyle(
                                                fontFamily: 'SF Pro',
                                                fontSize: 21.sp,
                                                color: AppColors.isense_button,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () => Get.toNamed(checkout),
                                    
                                        child: Container(
                                          height: 50.h,
                                          width: 285.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.r),
                                            color: AppColors.isense_button,
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Checkout',
                                              style: TextStyle(
                                                fontFamily: 'SF Pro',
                                                fontSize: 16.sp,
                                                color: AppColors.isense_white,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
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

Widget MediumText(String text) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: 'SF Pro',
      fontSize: 14.sp,
      color: AppColors.isense_primary,
      fontWeight: FontWeight.w500,
    ),
  );
}
