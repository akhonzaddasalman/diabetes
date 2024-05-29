import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mindingherdia/View/Screens/AppScreens/learn_screen.dart';
import 'package:mindingherdia/View/Screens/AppScreens/main_screen.dart';
import 'package:mindingherdia/View/Screens/AppScreens/profile_screen.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import '../../Colors/colors.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int? currentIndex;

  StreamController<int> streamController = StreamController();
  PageController controller = PageController(initialPage: 0);
  dynamic selected = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // final ap = Provider.of<AuthProvider>(context, listen: false);
    // ap.getUserDataFromSharedPreferences();
    currentIndex = 0;
  }

  void changePage(int? index) {
    setState(() {
      currentIndex = index!;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: controller,
          onPageChanged: (index) => setState(() => selected = index),
          children: const [
            MainScreen(),
            LearnScreen(),
            MainScreen(),
            ProfileScreen(),
          ],
        ),
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: StylishBottomBar(
          items: [
            BottomBarItem(
                icon: const Icon(Icons.explore_outlined),
                selectedIcon: const Icon(
                  Icons.explore,
                  color: kPrimaryColor,
                ),
                title: Text(
                  "Discover",
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                selectedColor: kPrimaryColor),
            BottomBarItem(
                icon: const Icon(Icons.travel_explore),
                selectedIcon: const Icon(
                  Icons.travel_explore,
                  color: kPrimaryColor,
                ),
                title: Text(
                  "Learn",
                  style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w600),
                ),
                selectedColor: kPrimaryColor),
            BottomBarItem(
                icon: const Icon(Icons.chat_outlined),
                selectedIcon: const Icon(
                  Icons.chat,
                  color: kPrimaryColor,
                ),
                title: Text(
                  "Community",
                  style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w600),
                ),
                selectedColor: kPrimaryColor),
            BottomBarItem(
              icon: SvgPicture.asset(
                "assets/Svgs/profile.svg",
                height: 25.h,
                width: 25.w,
              ),
              selectedIcon: SvgPicture.asset(
                "assets/Svgs/profile-selected.svg",
                height: 25.h,
                width: 25.w,
                color: kPrimaryColor,
              ),
              title: Text(
                "Profile",
                style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w600),
              ),
              selectedColor: kPrimaryColor,
            ),
          ],
          elevation: 8,
          currentIndex: selected ?? 0,
          onTap: (index) {
            setState(() {
              print(index);
              selected = index;
              controller.animateToPage(index, duration: const Duration(microseconds: 100), curve: Curves.linear);
            });
          },
          option: AnimatedBarOptions(
            iconSize: 25,
            opacity: 0.3,
          ),
        ),
      ),
    );
  }

  // Future<bool> onWillPop() async {
  //   // return SystemNavigator.pop();
  //
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return ExitAppDialog(
  //             description: 'Do you really want to quit?',
  //             leftButtonText: 'Cancel',
  //             rightButtonText: 'OK',
  //             onAgreeTap: () {
  //               SystemNavigator.pop();
  //             });
  //       });
  //   return false;
  // }
}


