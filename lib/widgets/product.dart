import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/appColor.dart';

Widget product(title,image,location) {
  return Container(
    height: 196.h,
    width: 148.w,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r)),
    child: Padding(
      padding:
          EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w, bottom: 20.h),
      child: Column(
        children: [
          Expanded(flex: 2, child: Image.asset(image)),
          Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: AppColor.black),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: AppColor.green,
                        size: 12.r,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.w),
                        child: Text(location,
                            style: TextStyle(
                              fontSize: 10.sp,
                              color: AppColor.grey,
                              fontWeight: FontWeight.w500
                            )),
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
    ),
  );
}
