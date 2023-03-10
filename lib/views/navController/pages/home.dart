import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_store/const/appColor.dart';
import 'package:food_store/controller/route/route.dart';
import 'package:food_store/widgets/bennerPagView.dart';
import 'package:food_store/widgets/listTile.dart';
import 'package:get/get.dart';
import '../../../widgets/product.dart';

class Home_Screen extends StatefulWidget {
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final List<Widget> pages = [
      benner(
        "Flash Offer",
        "We are here with the best\ndeserts intown.",
        "Order >",
        "assets/logo1.png",
        "assets/burgers.png",
        LinearGradient(
          colors: [Color(0xffFF9F06), Color(0xffFFE1B4)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      benner(
        "Flash Offer",
        "We are here with the best\ndeserts intown.",
        "Order >",
        "assets/logo2.png",
        "assets/Pizza1.png",
        LinearGradient(
          colors: [Color(0xFF060AFF), Color(0xFFB4C8FF)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      benner(
        "Flash Offer",
        "We are here with the best\ndeserts intown.",
        "Order >",
        "assets/logo1.png",
        "assets/burgers.png",
        LinearGradient(
          colors: [Color(0xFF06FF30), Color(0xFFB4FFD3)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    ];
    PageController _pageController = PageController();
    double currentPage = 0;
    final _totalDots = pages.length;

    double _currentPosition = currentPage;

    double _validPosition(double position) {
      if (position >= _totalDots) return 0;
      if (position < 0) return _totalDots - 1.0;
      return position;
    }

      String getPrettyCurrPosition() {
        return (currentPage + 1.0).toStringAsPrecision(3);
      }

      void _updatePosition(double position) {
        setState(() => _currentPosition = _validPosition(position));
      }
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.h),
        child: Column(
          children: [
            AppBar(
              elevation: 0,
              backgroundColor: AppColor.white,
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: AppColor.black,
                  )),
              title: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: AppColor.green,
                    size: 16.r,
                  ),
                  Text(
                    "Agrabad 435, Chittagong",
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
              centerTitle: true,
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 16.r,
                      backgroundImage: AssetImage("assets/safeFood.png"),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 37.5, right: 37.5),
              child: Container(
                height: 36.h,
                decoration: BoxDecoration(
                  color: Color(0xFFE2E3E4),
                  borderRadius: BorderRadius.all(
                    Radius.circular(11.r),
                  ),
                ),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 20.w),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 17.w, right: 17.w, top: 5.h),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 160.h,
                    //width:double.
                    child: PageView(
                      controller: _pageController,
                      children: pages,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                    child: DotsIndicator(
                      dotsCount: pages.length,
                      position: _currentPosition,

                      decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        activeSize: const Size(18.0, 9.0),
                        activeColor: AppColor.green,
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                          text: "Today New Arivable\n",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColor.black),
                          children: [
                            TextSpan(
                              text: 'Best of the today  food list update',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColor.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ]),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        "view >",
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColor.grey,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 196.h,
                width: double.maxFinite,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    product(
                      "Chicken Biryani",
                      "assets/add1.png",
                      "kazi Deiry, Taiger Pass\nChittagong",
                    ),
                    product(
                      "Sauce Tonkatsu",
                      "assets/add2.png",
                      "Handi Restaurant,\nChittagong",
                    ),
                    product(
                      "Chicken Katsu",
                      "assets/add3.png",
                      "Ambrosia Hotel &\nRestaurant",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h,bottom: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: "Booking Restaurant\n",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColor.black),
                          children: [
                            TextSpan(
                              text: 'Check your city Near by Restaurant',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColor.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ]),
                      textAlign: TextAlign.start,
                    ),
                    InkWell(
                      onTap: ()=>Get.toNamed(location),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text(
                          "view >",
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColor.grey,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              StoreName(
                "assets/shop1.png",
                "Hotel Zaman Restaurant",
                "kazi Deiry, Taiger Pass\nChittagong",
                () {},
                "Book",
              ),
              StoreName(
                "assets/shop2.png",
                "Tava Restaurant",
                "Zakir Hossain Rd,\nChittagong",
                () {},
                "Book",
              ),
              StoreName(
                "assets/shop1.png",
                "Hotel Zaman Restaurant",
                "kazi Deiry, Taiger Pass\nChittagong",
                () {},
                "Book",
              ),
              StoreName(
                "assets/shop1.png",
                "Hotel Zaman Restaurant",
                "kazi Deiry, Taiger Pass\nChittagong",
                () {},
                "Book",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
