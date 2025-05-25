import 'package:flutter/material.dart';
import 'package:paypasa/constants/font_constants.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../constants/color_constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brown,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            color: pink,
            width: double.infinity,
            height: 55.h,
          ),
          bodyWidgets()
        ],
      )
    );
  }

  bodyWidgets() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: 32.sp,
          ),
          topProfile(),
          SizedBox(
            height: 23.sp,
          ),
          circleProgress(),
          SizedBox(
            height: 23.sp,
          ),
          dueTile(),
          SizedBox(
            height: 25.sp,
          ),
          servicesListview(),
          SizedBox(
            height: 20.sp,
          ),
          offersListview(),
        ],
      ),
    );
  }
  
  topProfile() {
    return Padding(
      padding: EdgeInsets.only(left: 16.sp),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 21.sp,
            backgroundColor: textgrey,
          ),
          SizedBox(
            width: 12.sp,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Good Morning", style: subtitleSemiboldStyle,),
              Text("Jyodesh", style: subtitleSemiboldStyle.copyWith(fontWeight: FontWeight.w600, fontSize: 17.sp),),
            ],
          ),
        ],
      ),
    );
  }
  
  circleProgress() {
    return Image.asset("assets/images/Progress.png", height: 65.sp,);
  }
  
  dueTile() {
    return Container(
      height: 34.sp,
      width: 80.w,
      padding: EdgeInsets.symmetric(horizontal: 15.sp),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset("assets/icons/cash.png", ),
              SizedBox(
                width: 10.sp,
              ),
              Text("Due in 30 days", style: subtitleStyle,),
            ],
          ),
          Text("Rs. 2500", style: subtitleSemiboldStyle.copyWith(fontSize: 16.sp),),
        ],
      ),
    );
  }
  
  servicesListview() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
          child: Text("Services", 
            style: subtitleSemiboldStyle.copyWith(
              color: white,
              fontSize: 16.sp
            ),
          ),
        ),
        SizedBox(
          height: 15.sp,
        ),
        SizedBox(
          height: 35.sp,
          width: double.infinity,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 10,
            padding: EdgeInsets.only(left: 20.sp),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CircleAvatar(
                radius: 24.sp,
                backgroundColor: grey,
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 15.sp,
              );
            },
          ),
        )
      ],
    );
  }
  
  offersListview() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
          child: Text("Offers", 
            style: subtitleSemiboldStyle.copyWith(
              color: white,
              fontSize: 16.sp
            ),
          ),
        ),
        SizedBox(
          height: 15.sp,
        ),
        SizedBox(
          height: 45.sp,
          width: double.infinity,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 6,
            padding: EdgeInsets.only(left: 20.sp),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 40.sp,
                    width: 40.sp,
                    decoration: BoxDecoration(
                      color: grey,
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  Text("Item name $index", style: subtitleStyle.copyWith(color: white, fontSize: 14.sp),),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 12.sp,
              );
            },
          ),
        )
      ],
    );
  }
}