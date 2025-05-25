import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../constants/color_constants.dart';
import '../constants/font_constants.dart';

customAppbar({required String title}) {
  return AppBar(
    leading: const SizedBox(),
    backgroundColor: pink,
    title: Text(title, style: subtitleSemiboldStyle.copyWith(color: brown, fontSize: 18.sp),),
    centerTitle: true,
  );
}