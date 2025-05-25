import 'package:flutter/material.dart';
import 'package:paypasa/constants/font_constants.dart';
import 'package:paypasa/constants/icons_constants.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../constants/color_constants.dart';
import '../../widgets/custom_appbar.dart';

class StatementView extends StatefulWidget {
  const StatementView({super.key});

  @override
  State<StatementView> createState() => _StatementViewState();
}

class _StatementViewState extends State<StatementView> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brown,
      appBar: customAppbar(
        title: "Statement",
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 15.sp,
            ),
            filterTile(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10.sp),
              child: Text("Wed, Nov 20", style: subtitleStyle.copyWith(color: white),),
            ),
            statementListview(),
            SizedBox(
              height: 15.sp,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10.sp),
              child: Text("Tue, Nov 19", style: subtitleStyle.copyWith(color: white),),
            ),
            statementListview(),
          ],
        ),
      ),
    );
  }
  
  filterTile() {
    return 
    Row(
      children: [
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Row(
            children: [
              Text("Filter", style: subtitleStyle.copyWith(color: pink)),
              SizedBox(
                width: 10.sp,
              ),
              Image.asset(filter)
            ],
          )
        ),
        SizedBox(
          width: 20.sp,
        )
      ],
    );
  }
  
  statementListview() {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 3,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 20.sp),
          width: double.infinity,
          height: 35.sp,
          decoration: BoxDecoration(
            color: pink,
            borderRadius: BorderRadius.circular(15)
          ),
          child: Row(
            children: [
              SizedBox(
                width: 15.sp,
              ),
              Image.asset(
                "assets/images/starbucks.png",
              ),
              SizedBox(
                width: 15.sp,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Paid to Starbucks", style: subtitleSemiboldStyle,),
                  Text("12:00 PM", style: subtitleStyle.copyWith(fontSize: 13.sp),),
                ],
              ),
              const Spacer(),
              Text("Rs. 2000", style: subtitleSemiboldStyle,),
              SizedBox(
                width: 15.sp,
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 15.sp,
        );
      },
    );
  }
}