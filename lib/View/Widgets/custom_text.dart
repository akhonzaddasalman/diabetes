import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final TextOverflow? overflow;
  final TextStyle? textStyle;

  const CustomTextWidget({super.key, required this.text, this.textStyle, this.overflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // overflow: overflow ?? TextOverflow.ellipsis,
      style: textStyle ?? TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16), // This can be
      // null if
      // textStyle is
      // not
      // provided
    );
  }
}
