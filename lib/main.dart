import 'package:calories_calculator/constants.dart';
import 'package:flutter/material.dart';

import 'views/home/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calories Calculator",
      debugShowCheckedModeBanner: false,
      theme: theme,
      builder: (context, child) => SafeArea(child: child!),
      home: HomeView(),
    );
  }
}
