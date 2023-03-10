import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../const/appColor.dart';
import '../../../widgets/listTile.dart';

class History_Screen extends StatelessWidget {
  const History_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(16.r),
        )),
        backgroundColor: AppColor.green,
        title: Text(
          "Booking History",
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(top: 20.h, left: 10.w, right: 10.w),
          child: Column(
            children: [
              StoreName(
                "assets/shop1.png",
                "Hotel Zaman Restaurant",
                "kazi Deiry, Taiger Pass\nChittagong",
                () {},
                "Check",
              ),
              StoreName(
                "assets/shop2.png",
                "Tava Restaurant",
                "Zakir Hossain Rd,\nChittagong",
                () {},
                "Check",
              ),
              StoreName(
                "assets/shop1.png",
                "Hotel Zaman Restaurant",
                "kazi Deiry, Taiger Pass\nChittagong",
                () {},
                "Check",
              ),

              Padding(
                padding: EdgeInsets.only(left: 86.5.w, right: 86.5.w),
                child: InkWell(
                  onTap: (){},
                  child: Card(
                      child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.w, horizontal: 24.h),
                    child: Center(
                        child: Text(
                      "+ Booking more",
                      style: TextStyle(
                          color: AppColor.grey,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600),
                    )),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
