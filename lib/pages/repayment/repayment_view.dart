import 'package:flutter/material.dart';
import 'package:paypasa/constants/font_constants.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../constants/color_constants.dart';
import '../../widgets/custom_appbar.dart';

class RepaymentView extends StatefulWidget {
  const RepaymentView({super.key});

  @override
  State<RepaymentView> createState() => _RepaymentViewState();
}

class _RepaymentViewState extends State<RepaymentView> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brown,
      appBar: customAppbar(
        title: "Repayment",
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20.sp,),
            totalRepaymentTile(),
            SizedBox(height: 15.sp,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10.sp),
              child: Text("Transactions", style: subtitleStyle.copyWith(color: white),),
            ),
            SizedBox(height: 10.sp,),
            statementListview(),
          ],
        ),
      ),
    );
  }
  
  statementListview() {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 8,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            buildBottomsheet();
          },
          child: Container(
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
  
  totalRepaymentTile() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.sp),
      padding: EdgeInsets.symmetric(horizontal: 15.sp),
      width: double.infinity,
      height: 38.sp,
      decoration: BoxDecoration(
        color: pink,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Total Repayment", style: subtitleSemiboldStyle,),
          Text("Rs. 2500", style: titleStyle.copyWith(fontSize: 20.sp),),
        ],
      ),
    );
  }
  
  void buildBottomsheet() {
    showBottomSheet(
      context: context, 
      enableDrag: true,  
      // isDismissible: false
      builder: (context) {
        return Container(
          color: brown,
          padding: EdgeInsets.symmetric(
            horizontal: 20.sp,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 15.sp,
              ),
              Text("Pay in 4", style: subtitleStyle.copyWith(color: white),),
              SizedBox(height: 15.sp,),
              splitpaymenttile(),
              SizedBox(height: 15.sp,),
              splitpaymenttile(),
              SizedBox(height: 15.sp,),
              splitpaymenttile(),
              SizedBox(height: 15.sp,),
              splitpaymenttile(),
              SizedBox(height: 15.sp,),
            ],
          ),
        );
      },
    );
  }
  
  splitpaymenttile() {
    return Container(
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("1 of 4", style: subtitleSemiboldStyle.copyWith(fontSize: 13.sp),),
              Text("Due Nov 27, 2024", style: subtitleSemiboldStyle,),
              Text("Paid", style: subtitleSemiboldStyle.copyWith(fontSize: 13.sp, color: green),),
            ],
          ),
          const Spacer(),
          Text("Rs. 625", style: subtitleSemiboldStyle,),
          SizedBox(
            width: 15.sp,
          ),
        ],
      ),
    );
  }
}