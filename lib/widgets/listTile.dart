import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/appColor.dart';

class StoreName extends StatelessWidget {
  var image;
  String title;
  String subtitle;
  final VoidCallback onclick;
  String buttonName;
  StoreName (this.image,this.title,this.subtitle,this.onclick,this.buttonName);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 3.h,bottom: 5.h),
      child: Card(
        child: ListTile(
          leading: Image.asset(
           image,
          ),
          title: Text(title),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Row(children: [
                  Icon(
                    Icons.location_on,
                    color: AppColor.green,
                    size: 16.r,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.w),
                    child: Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColor.grey,
                        )),
                  ),
                ]),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap:onclick,
                  child: Container(
                    height: 28.h,
                    width: 88,
                    decoration: BoxDecoration(
                        color: AppColor.green,
                        borderRadius: BorderRadius.circular(8.r)),
                    child: Center(
                      child: Text(
                        buttonName,
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColor.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}