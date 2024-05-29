//Registration Main Button
import 'package:flutter/material.dart';
import 'package:mindingherdia/View/Colors/colors.dart';

ElevatedButton buildRegisterButton(onPressed, title, {TextStyle? textStyle, ButtonStyle? style}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: style ??
        ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(kPrimaryColor)),
    child: Text(
      title,
      style: textStyle ?? const TextStyle(fontSize: 18, color: Colors.white),
    ),
  );
}

//Outlined Button
OutlinedButton buildOutlineButton(onPressed, title, {TextStyle? textStyle, ButtonStyle? buttonStyle}) {
  return OutlinedButton(
    onPressed: onPressed,
    style: buttonStyle ??
        OutlinedButton.styleFrom(
          side: const BorderSide(
            width: 1.0,
            color: kPrimaryColor,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
    child: Text(
      title,
      style: textStyle ?? const TextStyle(fontSize: 15, color: kDescriptionColor),
    ),
  );
}
