import 'package:calories_calculator/constants.dart';
import 'package:calories_calculator/widgets/my_icon_button.dart';
import 'package:calories_calculator/widgets/my_text.dart';
import 'package:flutter/material.dart';

class CounterCard extends StatelessWidget {
  const CounterCard({
    Key? key,
    required this.title,
    required this.counter,
    required this.onMinus,
    required this.onPlus,
  }) : super(key: key);

  final String title;
  final int counter;
  final VoidCallback onMinus;
  final VoidCallback onPlus;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            MyText(
              data: title,
              color: kWhiteColor,
              fontSize: 16,
            ),
            SizedBox(height: 20),
            MyText(
              data: "$counter",
              color: kWhiteColor,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyIconButton(image: 'minus', onPressed: onMinus,),
                MyIconButton(image: 'plus', onPressed: onPlus,),
              ],
            )
          ],
        ),
        decoration: BoxDecoration(
          color: kLightBlueColor,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
