import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mindingherdia/View/Colors/colors.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: CircleAvatar(
        radius: 35,
        child: Image.asset('assets/Images/user.png'),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Hello, James",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 19, color: Colors.black),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.location_pin,
                color: kPrimaryColor,
              ),
              Text(
                "New York, USA",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
      actions: const [
        CircleAvatar(
          radius: 35,
          backgroundColor: kPrimaryColor,
          child: Icon(
            Icons.notifications_none_outlined,
            color: kWhiteColor,
            size: 30,
          ),
        )
      ],
    );
  }
}
