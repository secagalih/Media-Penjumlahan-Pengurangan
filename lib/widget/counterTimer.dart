import 'package:belajar_berhitung/custom/customTheme.dart';
import 'package:belajar_berhitung/custom/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterTimeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      child: GetBuilder<QuestionController>(
        id: 'timer',
        init: QuestionController(),
        builder: (controller) {
          int seconds = controller.secondsPassed % 60;
          int minutes = controller.secondsPassed ~/ 60;
          return Row(
            children: [
              Icon(
                Icons.timer,
                color: COLOR_RED,
              ),
              Text(
                ' $minutes : $seconds',
                style: themeData.textTheme.headline4.copyWith(color: COLOR_RED),
              ),
            ],
          );
        },
      ),
    );
  }
}
