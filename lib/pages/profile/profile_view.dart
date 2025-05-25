import 'package:flutter/material.dart';
import 'package:paypasa/constants/font_constants.dart';
import 'package:paypasa/constants/icons_constants.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../constants/color_constants.dart';
import '../../widgets/custom_appbar.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brown,
      appBar: customAppbar(
        title: "Profile",
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Center(
            child: Container(
              height: 60.h,
              width: 80.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: pink,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 35.sp,
                  ),
                  Text("Ram Yadav", style: subtitleSemiboldStyle.copyWith(fontSize: 16.sp),),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Container(
                    height: 20.sp,
                    width: 42.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: green.withValues(alpha: 0.25)
                    ),
                    child: Center(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(check, scale: 0.7,),
                        SizedBox(
                          width: 5.sp,
                        ),
                        Text("KYC Verified", style: subtitleStyle.copyWith(color: black, fontSize: 13.sp),),
                      ],
                    )),
                  ),
                  SizedBox(
                    height: 25.sp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 16.sp,
                      ),
                      Column(
                        children: [
                          Text("Rs.7500", style: subtitleSemiboldStyle.copyWith(fontSize: 18.sp),),
                          Text("Balance", style: subtitleSemiboldStyle.copyWith(fontSize: 15.sp),),
                        ],
                      ),
                      Container(
                        height: 30.sp,
                        width: 5.sp,
                        color: brown,
                      ),
                      Column(
                        children: [
                          Text("52.23", style: subtitleSemiboldStyle.copyWith(fontSize: 18.sp),),
                          Text("PasaPoints", style: subtitleSemiboldStyle.copyWith(fontSize: 15.sp),),
                        ],
                      ),
                      SizedBox(
                        width: 16.sp,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.sp,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 20.sp),
                    leading: Image.asset(profile),
                    title: Text("My Information", style: subtitleSemiboldStyle,),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 20.sp),
                    leading: Image.asset(logout),
                    title: Text("Log Out", style: subtitleSemiboldStyle,),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 23.sp,
            child: CircleAvatar(
              radius: 32.sp,
              backgroundColor: pink,
              child: CircleAvatar(
                radius: 30.5.sp,
                backgroundColor: grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}