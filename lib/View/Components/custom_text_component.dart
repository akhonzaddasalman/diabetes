import 'package:flutter/material.dart';
import 'package:mindingherdia/View/Colors/colors.dart';

InputDecoration textFieldIconDecoration(hintText, prefixIcon, suffixIcon) {
  return InputDecoration(
    hintText: hintText,
    enabled: true,
    prefix: CircleAvatar(
      radius: 15,
      backgroundColor: kPrimaryColor.withOpacity(0.1),
      child: Icon(
        prefixIcon,
        color: kDescriptionColor,
        size: 20,
      ),
    ),
    suffixIcon: Icon(
      suffixIcon,
      color: kDescriptionColor,
      size: 20,
    ),
    hintStyle: TextStyle(color: kHintTextColor, fontSize: 12),
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(width: 0.5, color: kBorderColor),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(width: 0.7, color: kBorderColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(width: 0.7, color: kBorderColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: kBorderColor),
    ),
  );
}

// TextFormField(
// controller: _emailController,
// textInputAction: TextInputAction.done,
// cursorColor: Colors.black,
// decoration: textFieldIconDecoration('Email Address', null, null),
// ),
