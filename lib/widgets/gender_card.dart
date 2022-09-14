import 'package:calories_calculator/constants.dart';
import 'package:calories_calculator/widgets/my_text.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    Key? key,
    required this.image,
    required this.title,
    required this.contentColor,
    required this.onPressed,
  }) : super(key: key);

  final String image;
  final String title;
  final Color contentColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onPressed,
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset(
                getAsset(image),
                color: contentColor,
                height: 40,
                width: 40,
              ),
              SizedBox(height: 20),
              MyText(
                data: title,
                color: contentColor,
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: kLightBlueColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
