import 'package:flutter/material.dart';

import '../Colors/colors.dart';

InputDecoration appBarTextFieldDecoration(hintText) {
  return InputDecoration(
    fillColor: kTextFieldFillColor,
    filled: true,
    hintText: hintText,
    hintStyle: TextStyle(color: kHintTextColor, fontSize: 15, fontWeight: FontWeight.w500),
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
  );
}
