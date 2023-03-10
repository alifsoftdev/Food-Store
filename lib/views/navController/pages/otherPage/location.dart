import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_store/const/appColor.dart';

import '../../../../widgets/listTile.dart';

class location_Screen extends StatelessWidget {
  const location_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBEFF1),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(16.r),
        )),
        backgroundColor: AppColor.green,
        title: Text(
          "Details Restaurant",
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Container(
          height: 70.h,
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r))),
          child: Center(
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 232.w,
                height: 33.h,
                decoration: BoxDecoration(
                    color: AppColor.green,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Center(
                  child: Text(
                    "Booking",
                    style: TextStyle(
                        color: AppColor.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(16.r)),
                child: Padding(
                  padding: EdgeInsets.all(18.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Tava Restaurant",
                        style: TextStyle(
                            color: AppColor.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColor.green,
                            size: 14.r,
                          ),
                          Text(
                            "kazi Deiry, Taiger Pass,Chittagong",
                            style: TextStyle(
                                color: AppColor.grey,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Image.asset("assets/shop2b.png", fit: BoxFit.cover),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: AppColor.green,
                                    size: 14.r,
                                  ),
                                  Text(
                                    "Open today",
                                    style: TextStyle(
                                        color: AppColor.grey,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Text(
                                "10:00 AM - 12:00 PM",
                                style: TextStyle(
                                    color: AppColor.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.directions,
                                color: Colors.blue,
                                size: 16.sp,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Visit the Restaurant",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600),
                                  )),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
          SizedBox(height: 5.h,),
          Expanded(flex: 1, child: Container(
            decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.r),
                    topRight: Radius.circular(16.r))),
          child: Padding(
            padding: EdgeInsets.all(18.r),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                        text: "List other restaurant\n",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColor.black),
                        children: [
                          TextSpan(
                            text: 'check the menu at this restaurant',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: AppColor.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ]),
                    textAlign: TextAlign.start,
                  ),
                  InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        "see All >",
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColor.grey,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.h,),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
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
              )
            ],),
          ),
          )),
        ],
      ),
    );
  }
}
