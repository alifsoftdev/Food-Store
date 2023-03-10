import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_store/controller/route/route.dart';
import 'package:get/get.dart';

import '../../../../const/appColor.dart';
import '../../../../widgets/appButton/violetButton.dart';

class Success_Screen extends StatelessWidget {
  const Success_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(27.r),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Icon(Icons.check_circle,color: AppColor.green,size:82.sp,)),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding:  EdgeInsets.only(top: 20.h,bottom: 40.h,left: 46.w, right: 46.w),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColor.black),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        'Before enjoying Foodmedia services\nPlease register first',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff4B5563)),
                        textAlign: TextAlign.center,
                      ),
                       SizedBox(
                        height: 30.h,
                      ),
                      RichText(
              text: TextSpan(
                  text: "Can't get email?",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black),
                  children: [
                    TextSpan(
                      text: ' Resubmit',
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColor.green,
                          fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ]),
              textAlign: TextAlign.center,
            ),
                      
                    ]),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: 30.h,left: 46.w, right: 46.w),
              child: VioletButton("Create Account", ()=>Get.toNamed(navController)),
            ),
          ],
        ),
      ),
    );
  }
}