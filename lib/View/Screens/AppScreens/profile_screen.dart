import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mindingherdia/View/Colors/colors.dart';
import 'package:mindingherdia/View/Widgets/custom_text.dart';
import 'package:mindingherdia/View/Widgets/listTile_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool value = true;

  // get data from sharedPreferences
  // Future getData() async {
  //   final sp = context.read<SignInProvider>();
  //   sp.getDataFromSharedPreferences();
  // }

  @override
  void initState() {
    super.initState();
    // getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Center(
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(
                            //   builder: (context) {
                            //     return ProfileScreen();
                            //   },
                            // ));
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.grey.shade200,
                            radius: 35.r,
                            backgroundImage: const AssetImage("assets/Images/profile.png") as ImageProvider,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 150,
                            child: Text(
                              "Toni",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18.sp, color: kBlackColor),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Navigator.push(context, MaterialPageRoute(
                              //   builder: (context) {
                              //     return ProfileScreen();
                              //   },
                              // ));
                            },
                            child: CustomTextWidget(
                              text: "Edit profile",
                              textStyle: GoogleFonts.lato(fontWeight: FontWeight.w500, fontSize: 18.sp, color: kPrimaryColor),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.h),
            height: 4.h,
            width: double.infinity,
            color: kHintTextColor.withOpacity(0.5),
          ),
          CustomListTile(
              leadingIcon: CupertinoIcons.person,
              title: "Settings",
              onTap: () {},
              trailingIcon: Icons.arrow_forward_ios_rounded,
              boxColor: Colors.blue.shade100,
              iconColor: Colors.blue),
          const SizedBox(height: 10),
          CustomListTile(
              leadingIcon: Icons.notifications_none_outlined,
              title: "User manual",
              onTap: () {
                // nextScreen(context, const MedicationReminderPage());
              },
              trailingIcon: Icons.arrow_forward_ios_rounded,
              boxColor: Colors.purple.shade100,
              iconColor: Colors.purple),
          const SizedBox(height: 10),
          CustomListTile(
              leadingIcon: Icons.medical_information,
              title: "About Us",
              onTap: () {
                // nextScreen(context, const SymptomCheckerScreen());
              },
              trailingIcon: Icons.arrow_forward_ios_rounded,
              boxColor: Colors.cyanAccent.shade100,
              iconColor: Colors.cyan),
          const SizedBox(height: 10),
          CustomListTile(
              leadingIcon: Icons.tips_and_updates,
              title: "Support & Feedback",
              onTap: () {
                // nextScreen(context, HealthTipsScreen());
              },
              trailingIcon: Icons.arrow_forward_ios_rounded,
              boxColor: Colors.greenAccent.shade100,
              iconColor: Colors.green),
          const SizedBox(height: 10),
          // CustomListTile(
          //     leadingIcon: Icons.settings_suggest_outlined,
          //     title: "General Settings",
          //     onTap: () {},
          //     trailingIcon: Icons.arrow_forward_ios_rounded,
          //     boxColor: Colors.orange.shade100,
          //     iconColor: Colors.orange),
          // const SizedBox(height: 10),
          CustomListTile(
              leadingIcon: Icons.info_outline_rounded,
              title: "Share with buddies",
              onTap: () {
                // nextScreen(context, const AboutUsScreen());
              },
              trailingIcon: Icons.arrow_forward_ios_rounded,
              boxColor: Colors.orange.shade100,
              iconColor: Colors.orange),
          const Divider(height: 20),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  offset: const Offset(4, 4),
                  blurRadius: 10,
                  color: kDescriptionColor.withOpacity(.2),
                ),
                BoxShadow(
                  offset: const Offset(-3, 0),
                  blurRadius: 15,
                  color: kDescriptionColor.withOpacity(.1),
                )
              ],
            ),
            child: ListTile(
              onTap: () async {
                // await sp.userSignOut().whenComplete(() {
                //   nextScreenRemoveUntil(
                //     context,
                //     '/signIn',
                //   );
                // });
              },
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.logout,
                  color: Colors.red,
                  size: 25,
                ),
              ),
              title: const Text(
                "Log Out",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 22,
              ),
            ),
          ),

          const SizedBox(height: 10),
        ]),
      ),
    );
  }
}
