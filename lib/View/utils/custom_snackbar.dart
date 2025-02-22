import 'package:flutter/material.dart';

// This is custom snackBar which i using over the project
void openSnackBar(context, snackMessage, color) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: color,
      action: SnackBarAction(
        label: "OK",
        textColor: Colors.white,
        onPressed: () {},
      ),
      dismissDirection: DismissDirection.up,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height - 160, left: 5, right: 5),
      content: Text(
        snackMessage,
        style: const TextStyle(fontSize: 14),
      )));
}
