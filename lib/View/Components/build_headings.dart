import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Colors/colors.dart';

Text buildTextFieldLabel(label) {
  return Text(
    label,
    style: TextStyle(fontSize: 15, color: kDescriptionColor),
  );
}

Text buildTopBarTitle(title) {
  return Text(
    title,
    style: GoogleFonts.notoSansJp(
      fontSize: 16,
      color: kH2Color,
      fontWeight: FontWeight.w600,
    ),
  );
}

Text buildHeading(title) {
  return Text(
    title,
    overflow: TextOverflow.ellipsis,
    style: GoogleFonts.poppins(
      fontSize: 19,
      color: kH2Color,
      fontWeight: FontWeight.w600,
    ),
  );
}

Row buildTitleRow(title, onTap) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: TextStyle(
          color: kH2Color,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
      TextButton(
        onPressed: onTap,
        child: Text(
          'View all',
          style: TextStyle(
            fontSize: 12,
            color: kPrimaryColor,
          ),
        ),
      ),
    ],
  );
}
