import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paypasa/constants/font_constants.dart';
import 'package:paypasa/pages/login/login_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../constants/color_constants.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () => Get.off(() => const LoginView()),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png", height: 50.sp,),
            SizedBox(
              height: 12.sp,
            ),
            Text("Paypasa", style: logostyle,),
          ],
        ),
      ),
    );
  }
}