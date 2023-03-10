import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_store/const/appColor.dart';

class Account_Screen extends StatelessWidget {
  const Account_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 30.h,left: 20.w,right: 20.w),
          child: Column(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: 70.h,
                  decoration: BoxDecoration(
                      color: AppColor.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(11.r)),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/safeFood.png"),
                    ),
                    title: Text(
                      "Sadek Hossen",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColor.black),
                    ),
                    subtitle: Text(
                      "sadekbranding@gmail.com",
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColor.grey),
                    ),
                    trailing: Icon(
                      Icons.circle_notifications_outlined,
                      size: 30.sp,
                      color: AppColor.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColor.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(11.r)),
                  child: ListTile(
                    leading: Icon(
                      Icons.account_circle_outlined,
                      color: AppColor.black,
                    ),
                    title: Text(
                      "Account setting",
                      style: TextStyle(fontSize: 18.sp, color: AppColor.black),
                    ),
                    trailing: Icon(
                      Icons.edit_note_outlined,
                      size: 20.sp,
                      color: AppColor.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.h,),
              Container(
                decoration: BoxDecoration(
                    color: AppColor.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(11.r)),
                child: Column(
                  children: [
                    options(Icons.language, "Language",
                        Icons.arrow_forward_ios,(){}),
                    options(Icons.message_outlined, "Feedback",
                        Icons.arrow_forward_ios,(){}),
                    options(Icons.star_rate_outlined, "Rate us",
                        Icons.arrow_forward_ios,(){}),
                    options(Icons.arrow_circle_up_outlined, "New Version",
                        Icons.arrow_forward_ios,(){}),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 35.h,
                    width: 111.w,
                    decoration: BoxDecoration(
                        color:Colors.red,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 0,
                            blurRadius: 2,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(11.r)),
                    child: Center(
                        child: Text(
                          "Logout",
                          style: TextStyle(
                              color: AppColor.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600),
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget options(icon, String title, icon2,onclick) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: InkWell(
        onTap: onclick,
        child: ListTile(
          leading: Icon(icon,color: AppColor.black),
          title: Text(
            title,
            style: TextStyle(fontSize: 18.sp, color: AppColor.black),
          ),
          trailing: Icon(
            icon2,
            size: 20.sp,
            color: AppColor.grey,
          ),
        ),
      ),
    );
  }
}
