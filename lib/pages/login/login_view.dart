import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paypasa/constants/font_constants.dart';
import 'package:paypasa/widgets/custom_textfield.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../constants/color_constants.dart';
import '../navbar/navbar_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
          welcomeText(),
          loginFields(),

        ],
      )
    );
  }
  
  welcomeText() {
    return Padding(
      padding: EdgeInsets.only(left: 20.sp, top: 45.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Welcome To", style: logostyle,),
          Text("PayPasa", style: logostyle.copyWith(fontSize: 26.sp),),
        ],
      ),
    );
  }
  
  loginFields() {
    return Padding(
      padding: EdgeInsets.only(left: 18.sp, top: 72.sp, right: 18.sp),
      child: Column(
        children: [
          Text("Login", style: logostyle.copyWith(fontSize: 20.sp),),
          SizedBox(
            height: 20.sp,
          ),
          const CustomTextfield(hintText: "Email/Phone number"),
          SizedBox(
            height: 10.sp,
          ),
          const CustomTextfield(hintText: "Password"),
          SizedBox(
            height: 30.sp,
          ),
          SizedBox(
            height: 30.sp,
            width: double.infinity,
            child: MaterialButton(
              minWidth: 50.w,
              color: pink,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)
              ),
              onPressed: () {
                Get.to(() => const NavbarView());
              },
              child: Text("Log In", style: subtitleSemiboldStyle,)),
          )
        ],
      ),
    );
  }
}