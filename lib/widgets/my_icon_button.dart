import 'package:flutter/material.dart';

import '../constants.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({Key? key, required this.image, required this.onPressed}) : super(key: key);

  final String image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: onPressed,
      child: CircleAvatar(
        radius: 20,
        backgroundColor: kBackgroundColor.withOpacity(0.3),
        child: Image.asset(
          getAsset(image),
          color: kWhiteColor,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
