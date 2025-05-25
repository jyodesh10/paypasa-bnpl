

import 'package:flutter/material.dart';
import 'package:paypasa/constants/color_constants.dart';
import 'package:paypasa/constants/icons_constants.dart';
import 'package:paypasa/pages/qr/qr_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../constants/font_constants.dart';
import '../home/home_view.dart';
import '../profile/profile_view.dart';
import '../repayment/repayment_view.dart';
import '../statement/statement_view.dart';

class NavbarView extends StatefulWidget {
  const NavbarView({super.key});

  @override
  State<NavbarView> createState() => _NavbarViewState();
}

class _NavbarViewState extends State<NavbarView> {
  int currentPage = 0;
  final List<Widget> screens = [
    const HomeView(),
    const RepaymentView(),
    const QrView(),
    const StatementView(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          screens.elementAt(currentPage),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 33.sp,
            width: 33.sp,
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
              backgroundColor: pink,
              onPressed: () {
                setState(() {
                  currentPage = 2;
                });
              },
              child: Image.asset(qr)
            ),
          ),
          SizedBox(
            height: 10.sp,
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: 
        BottomNavigationBar(
          unselectedLabelStyle: subtitleStyle.copyWith(color: Colors.black, fontSize: 14.sp),
          elevation: 5,
          enableFeedback: false,
          showUnselectedLabels: true,
          selectedLabelStyle: subtitleStyle.copyWith(fontSize: 14.5.sp, fontWeight: FontWeight.w600),
          // type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                home,
                height: 35,
                color: brown,
              ),
              activeIcon: Image.asset(
                home,
                height: 35,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                cash,
                height: 35,
                color: brown,
              ),
              activeIcon: Image.asset(
                cash,
                height: 35,
              ),
              label: 'Repayment'
            ),
            const BottomNavigationBarItem(
              icon: SizedBox(),
              activeIcon: SizedBox(),
              label: ''
            ),
            BottomNavigationBarItem(
              icon: Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.asset(
                    history,
                    height: 35,
                    color: brown,
                  ),
                ],
              ),
              activeIcon: Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.asset(
                    history,
                    height: 35,
                  ),
                ],
              ),
              label: 'Statement',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                profile,
                height: 35,
                color: brown,
              ),
              activeIcon: Image.asset(
                profile,
                height: 35,
              ),
              label: 'Profile',
            ),
          ],

          currentIndex: currentPage,
          selectedItemColor: brown,
          unselectedItemColor: Colors.grey,
          backgroundColor: white,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              currentPage = value;
            });
          },
        ),
    );
  }
}