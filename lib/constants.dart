import 'package:flutter/material.dart';

Color kPrimaryColor = Color(0xFFff0067);
Color kWhiteColor = Colors.white;
Color kCardColor = Color(0xFF0c1234);
Color kLightBlueColor = Color(0xFF272a4e);
Color kBackgroundColor = Color(0xFF12153B);
Color kLightGrayColor = Color(0xFFF2F3F2);
Color kGrayColor = Color(0xFF7C7C7C);
Color kDarkGrayColor = Color(0xFF4C4F4D);

ThemeData theme = ThemeData(
  primaryColor: kPrimaryColor,
  backgroundColor: kWhiteColor,
);

String getAsset(String image) => 'assets/images/$image.png';

double getHeight(BuildContext context, double fraction, {bool subtractAppBar = true}) {
  final mediaQuery = MediaQuery.of(context);
  final appBarHeight = AppBar().preferredSize.height;
  final subtraction = subtractAppBar ? (mediaQuery.padding.top + appBarHeight) : 0;
  return (mediaQuery.size.height - subtraction) / fraction;
}

double getWidth(BuildContext context, double fraction) {
  final mediaQuery = MediaQuery.of(context);
  return (mediaQuery.size.width) / fraction;
}