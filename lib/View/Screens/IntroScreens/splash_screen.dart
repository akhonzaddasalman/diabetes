import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mindingherdia/View/Colors/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Check if token exists in SharedPreferences
    _checkToken();
  }

  void _checkToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');

    // Delay for a short duration to show splash screen
    Timer(const Duration(seconds: 4), () {
      // Navigate based on the existence of token
      if (token != null && token.isNotEmpty) {
        // Token exists, navigate to home screen
        Navigator.pushReplacementNamed(context, '/home');
      } else {
        // Token does not exist, navigate to login screen
        Navigator.pushReplacementNamed(context, '/welcomeScreen');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor.withOpacity(0.8),
      child: Scaffold(
        backgroundColor: kPrimaryColor.withOpacity(0.8),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 2,
            ),
            Image.asset('assets/Images/logo.png'),
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 12.0),
            //   child: CustomTextWidget(
            //     text: "MindHerDia",
            //     textStyle: GoogleFonts.viga(color: kWhiteColor, fontWeight: FontWeight.normal, fontSize: 29.sp),
            //   ),
            // ),
            const Spacer(),
            const SpinKitFadingCircle(color: kWhiteColor),
            SizedBox(
              height: 90.h,
            )
          ],
        )),
      ),
    );
  }
}
