import 'package:calories_calculator/widgets/confirm_button.dart';
import 'package:calories_calculator/widgets/my_text.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

Future<void> showResultDialog(
    BuildContext context,
    List<Map<String, dynamic>> result
    ) async {
  showDialog(
    context: context,
    builder: (context) => _Dialog(
      result: result,
    ),
  );
}

class _Dialog extends StatelessWidget {
  const _Dialog({Key? key, required this.result}) : super(key: key);

  final List<Map<String, dynamic>> result;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: kBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MyText(
              data: "Your Result",
              color: kWhiteColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              verticalMargin: 20,
            ),
            ...result.map((e) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(
                    data: '${e['title']} : ',
                    color: kWhiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                  Expanded(
                    child: MyText(
                      data: '${e['value'].ceilToDouble()} Calories/day',
                      color: kWhiteColor,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            )).toList(),
            SizedBox(height: 20),
            ConfirmButton(
              title: 'OK',
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
