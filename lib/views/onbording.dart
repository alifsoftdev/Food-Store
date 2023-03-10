import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_store/const/appColor.dart';
import 'package:food_store/controller/route/route.dart';
import 'package:get/get.dart';

class Onbording_Screen extends StatelessWidget {
  List<String> _title = [
    "Nearby restaurants",
    "Select the Favorites Menu",
    "Good food at a cheap price"
  ];
  List<String> _description = [
    "You don't have to go far to find a good restaurant,\nwe have provided all the restaurants that is \nnear you",
    "Now eat well, don't leave the house,You can \nchoose your favorite food only with \none click",
    "You can eat at expensive restaurants with\naffordable price"
  ];
  List<String> image = [
    "assets/Tracking_&_Maps.png",
    "assets/order.png",
    "assets/safeFood.png"
  ];

  RxInt _currentIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    //size of the window

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(27.r),
        child: Column(
          children: [
            Obx(
              () => Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.5.r, right: 10.5.r),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(image[_currentIndex.toInt()])),
                  )),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(top: 40.r),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Obx(
                        () => Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            '${_title[_currentIndex.toInt()]}',
                            style: TextStyle(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColor.black),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h,),
                      Obx(
                        () => Align(
                          alignment: Alignment.topCenter,
                          child: Text('${_description[_currentIndex.toInt()]}',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color:Color(0xff4B5563)),textAlign:TextAlign.center,),
                        ),
                      ),
                      
                    ]),
                    
              ),
            ),
            Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: ()=>Get.toNamed(signUp),
                            child: Text("Skip",style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color:Color(0xff4B5563))),
                          ),
                          Obx(
                            () => DotsIndicator(
                              dotsCount: image.length,
                              position: _currentIndex.toDouble(),
                              decorator: DotsDecorator(
                                color: Colors.grey,
                                activeColor: AppColor.green,
                                size: Size.square(10.0.r),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              if (_currentIndex == 2) {
                                Get.toNamed(signUp);
                              } else {
                                _currentIndex + 1;
                              }
                            },
                            child: Icon(
                              Icons.double_arrow,
                              color: AppColor.black,
                            ),
                          )
                        ],
                      )
          ],
        ),
      ),
    );
  }
}
