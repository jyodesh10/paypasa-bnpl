import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../constants/color_constants.dart';
import '../../constants/font_constants.dart';
import '../../constants/icons_constants.dart';
import '../../widgets/custom_appbar.dart';

class QrView extends StatefulWidget {
  const QrView({super.key});

  @override
  State<QrView> createState() => _QrViewState();
}

class _QrViewState extends State<QrView> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink,
      appBar: customAppbar(
        title: "Scan to Pay",
      ),
      body: Column(
        children: [
          const Spacer(),
          Center(
            child: Image.asset(scanner, height: 65.sp,),
          ),
          const Spacer(),
          Container(
            height: 20.h,
            decoration: BoxDecoration(
              color: brown,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              )
            ),
            padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 20.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Payment with QR Code", style: titleStyle.copyWith(color: white, fontSize: 16.sp),),
                SizedBox(
                  height: 10.sp,
                ),
                Text("Hold the code inside the frame, it will be scanned automatically", style: subtitleSemiboldStyle.copyWith(fontSize: 14.sp, color: textgrey),),
              ],
            ),
          )
        ],
      ),
    );
  }
}