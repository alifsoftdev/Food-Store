import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_store/const/appColor.dart';
import 'package:food_store/controller/route/route.dart';
import 'package:food_store/widgets/appButton/violetButton.dart';
import 'package:get/get.dart';

class SignUp_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RxBool _value = false.obs;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(27.sp),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset("assets/OrderSuccess.png")),
            ),
            Expanded(
              flex: 1,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(left: 46.r, right: 46.r,),
              child: Column(
                children: [
                  VioletButton("Create Account", ()=>Get.toNamed(success)),
                  SizedBox(
                    height: 10.h,
                  ),
                  Obx(
                    () => InkWell(
                      onTap: () {
                        _value.value = true;
                      },
                      child: Container(
                        height: 49.h,
                        decoration: BoxDecoration(
                            color: _value == false
                                ? Color(0xffD1FAE5)
                                : AppColor.green,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.r))),
                        child: _value == false
                            ? Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                      color: _value == false
                                          ? AppColor.green
                                          : AppColor.white),
                                ),
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                      child: Transform.scale(
                                          scale: 0.5.r,
                                          child: CircularProgressIndicator(
                                            color: AppColor.white,
                                          ))),
                                ],
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: 20.h),
              child: RichText(
                text: TextSpan(
                    text: "By logging in or registering, you have agreed to ",
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.black),
                    children: [
                      TextSpan(
                        text: 'the Terms and\nConditions ',
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColor.green,
                            fontWeight: FontWeight.w400),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      TextSpan(
                        text: 'And',
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColor.black,
                            fontWeight: FontWeight.w400),
                      ),
                      TextSpan(
                        text: 'Privacy Policy.',
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColor.green,
                            fontWeight: FontWeight.w400),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ]),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
