import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mindingherdia/View/Colors/colors.dart';
import 'package:mindingherdia/View/Widgets/custom_text.dart';
import 'package:mindingherdia/View/utils/custom_snackbar.dart';

GlobalKey<ScaffoldState> mainScaffoldKey = GlobalKey<ScaffoldState>();

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        bottom: const PreferredSize(preferredSize: Size.fromHeight(17), child: SizedBox()),
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: CircleAvatar(
                  radius: 27,
                  child: Image.asset('assets/Images/profile.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Hello, Toni",
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 17, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: GestureDetector(
              onTap: () {
                openSnackBar(context, "Notification will be done soon", kPrimaryColor);
              },
              child: CircleAvatar(
                radius: 23.r,
                backgroundColor: kPrimaryColor,
                child: const Icon(
                  Icons.notifications_none_outlined,
                  color: kWhiteColor,
                  size: 26,
                ),
              ),
            ),
          ),
        ],
        toolbarHeight: 60,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(
                text: "Diabetes Reversal",
                textStyle: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 17, color: Colors.black),
              ),
              CarouselSlider(
                items: [
                  //1st Image of Slider
                  GestureDetector(
                    onTap: () {
                      _viewLargeImage(context, "assets/Images/reversal/1.png");
                    },
                    child: Container(
                      margin: const EdgeInsets.all(6.0),
                      padding: const EdgeInsets.all(6.0),
                      height: 300,
                      width: 500,
                      child: Container(
                        margin: const EdgeInsets.all(6.0),
                        padding: const EdgeInsets.all(6.0),
                        height: 300,
                        width: 500,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/Images/reversal/1.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _viewLargeImage(context, "assets/Images/reversal/1.png");
                    },
                    child: Container(
                      margin: const EdgeInsets.all(6.0),
                      padding: const EdgeInsets.all(6.0),
                      height: 300,
                      width: 500,
                      child: Container(
                        margin: const EdgeInsets.all(6.0),
                        padding: const EdgeInsets.all(6.0),
                        height: 300,
                        width: 500,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/Images/reversal/1.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _viewLargeImage(context, "assets/Images/reversal/2.png");
                    },
                    child: Container(
                      margin: const EdgeInsets.all(6.0),
                      padding: const EdgeInsets.all(6.0),
                      height: 300,
                      width: 500,
                      child: Container(
                        margin: const EdgeInsets.all(6.0),
                        padding: const EdgeInsets.all(6.0),
                        height: 300,
                        width: 500,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/Images/reversal/2.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _viewLargeImage(context, "assets/Images/reversal/3.png");
                    },
                    child: Container(
                      margin: const EdgeInsets.all(3.0),
                      padding: const EdgeInsets.all(6.0),
                      height: 300,
                      width: 500,
                      child: Container(
                        margin: const EdgeInsets.all(6.0),
                        padding: const EdgeInsets.all(6.0),
                        height: 300,
                        width: 500,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/Images/reversal/3.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _viewLargeImage(context, "assets/Images/reversal/4.png");
                    },
                    child: Container(
                      margin: const EdgeInsets.all(3.0),
                      padding: const EdgeInsets.all(3.0),
                      height: 300,
                      width: 500,
                      child: Container(
                        margin: const EdgeInsets.all(6.0),
                        padding: const EdgeInsets.all(6.0),
                        height: 300,
                        width: 500,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/Images/reversal/4.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _viewLargeImage(context, "assets/Images/reversal/5.png");
                    },
                    child: Container(
                      margin: const EdgeInsets.all(3.0),
                      padding: const EdgeInsets.all(3.0),
                      height: 300,
                      width: 500,
                      child: Container(
                        margin: const EdgeInsets.all(6.0),
                        padding: const EdgeInsets.all(6.0),
                        height: 300,
                        width: 500,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/Images/reversal/5.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],

                //Slider Container properties
                options: CarouselOptions(
                  height: 240.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 1.05,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _viewLargeImage(BuildContext context, String imageUrl) {
    showGeneralDialog(
      context: context,
      barrierColor: Colors.black12.withOpacity(0.8), // Background color
      barrierDismissible: false,
      barrierLabel: 'Dialog',
      transitionDuration: const Duration(milliseconds: 400),
      pageBuilder: (context, __, ___) {
        return Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              // height: MediaQuery.of(context).size.height * 0.7,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.transparent, image: DecorationImage(image: AssetImage(imageUrl))),
            ),
          ),
        );
      },
    );
  }
}
