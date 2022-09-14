import 'package:flutter/material.dart';
import '../constants.dart';

void showCustomSnackBar(
    BuildContext context, {
      required String title,
      Color? backgroundColor,
    }) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(title),
      backgroundColor: backgroundColor ?? kPrimaryColor,
    )
  );
}