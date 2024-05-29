import 'package:flutter/material.dart';

class LearnModel {
  final String imagePath;
  final String title;
  final VoidCallback? onTap;

  LearnModel({required this.imagePath, required this.title, this.onTap});
}
