import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({
    Key? key,
    required this.data,
    this.textAlign,
    this.fontWeight,
    this.fontSize,
    this.color,
    this.verticalMargin,
    this.horizontalMargin,
    this.textOverflow,
  }) : super(key: key);

  final String data;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final double? verticalMargin;
  final double? horizontalMargin;
  final TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalMargin ?? 0,
        vertical: verticalMargin ?? 0,
      ),
      child: Text(
        data,
        textAlign: textAlign,
        style: TextStyle(
          overflow: textOverflow,
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: color,
        ),
      ),
    );
  }
}
