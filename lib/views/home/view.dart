import 'package:calories_calculator/constants.dart';
import 'package:calories_calculator/views/home/controller.dart';
import 'package:calories_calculator/widgets/confirm_button.dart';
import 'package:calories_calculator/widgets/gender_card.dart';
import 'package:calories_calculator/widgets/my_text.dart';
import 'package:flutter/material.dart';

import '../../widgets/counter_card.dart';
import '../../widgets/result_dialog.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  bool isMale = true;
  double height = 170;
  int age = 20;
  int weight = 80;
  HomeController homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: MyText(
          data: "Calories Calculator",
        ),
      ),
      body: Column(
        children: [
          Spacer(),
          Row(
            children: [
              GenderCard(
                title: 'Male',
                image: 'male',
                contentColor: isMale ? kWhiteColor : kWhiteColor.withOpacity(0.2),
                onPressed: () {
                  isMale = true;
                  setState(() {});
                },
              ),
              GenderCard(
                title: 'Female',
                image: 'female',
                contentColor: !isMale ? kWhiteColor : kWhiteColor.withOpacity(0.2),
                onPressed: () {
                  isMale = false;
                  setState(() {});
                },
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                MyText(
                  data: 'Height',
                  color: kWhiteColor,
                  fontSize: 16,
                  verticalMargin: 10,
                  fontWeight: FontWeight.bold,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(
                      data: '${height.ceilToDouble()}',
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      horizontalMargin: 5,
                      color: kWhiteColor,
                    ),
                    MyText(
                      data: 'CM',
                      verticalMargin: 5,
                      fontSize: 16,
                      color: kWhiteColor,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                    trackHeight: 0.5,
                  ),
                  child: Slider(
                    value: height,
                    min: 100,
                    max: 220,
                    activeColor: kWhiteColor,
                    thumbColor: kPrimaryColor,
                    inactiveColor: kWhiteColor.withOpacity(0.2),
                    onChanged: (v) {
                      height = v;
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: kLightBlueColor,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Row(
            children: [
              CounterCard(
                title: "Weight",
                counter: weight,
                onMinus: () {
                  if (weight != 5) {
                    weight--;
                    setState(() {});
                  }
                },
                onPlus: () {
                  weight++;
                  setState(() {});
                },
              ),
              CounterCard(
                title: "Age",
                counter: age,
                onMinus: () {
                  if (age != 1) {
                    age--;
                    setState(() {});
                  }
                },
                onPlus: () {
                  age++;
                  setState(() {});
                },
              ),
            ],
          ),
          Spacer(),
          ConfirmButton(
            title: 'Calculate your Calories',
            onPressed: () {
              final bmr = homeController.calculateBMR(
                isMale: isMale,
                height: height,
                weight: weight,
                age: age,
              );
              print('OBJ');
              showResultDialog(
                context,
                [
                  {
                    'title': 'No Exercise',
                    'value': bmr * 1.2,
                  },
                  {
                    'title': '1 - 3 Exercise',
                    'value': bmr * 1.375,
                  },
                  {
                    'title': '3 - 5 Exercise',
                    'value': bmr * 1.55,
                  },
                  {
                    'title': '6 - 7 Exercise',
                    'value': bmr * 1.725,
                  },
                  {
                    'title': '6 - 7 Hard Exercise',
                    'value': bmr * 1.9,
                  },
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
