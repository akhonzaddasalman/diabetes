import 'package:flutter/material.dart';

class Course {
  Course({
    this.id,
    required this.courseTitle,
    required this.courseSubtitle,
    required this.background,
    required this.illustration,
    this.logo,
    required this.videoUrl,
  });
  String? id;
  String courseTitle;
  String courseSubtitle;
  LinearGradient background;
  String illustration;
  String? logo;
  String videoUrl;
}
