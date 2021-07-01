import 'package:belajar_berhitung/custom/constants.dart';
import 'package:belajar_berhitung/custom/customTheme.dart';
import 'package:belajar_berhitung/custom/question_controller.dart';
import 'package:belajar_berhitung/widget/counterTimer.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 3),
        borderRadius: BorderRadius.circular(13),
      ),
      child: GetBuilder<QuestionController>(
        id: 'timer',
        init: QuestionController(),
        builder: (controller) {
          // print(controller.animation.value);
          return Stack(
            children: [
              // LayoutBuilder provide us the available space for the conatiner
              // constraints.maxWidth needed for our animation
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  // from 0 to 1 it takes 60s
                  width: constraints.maxWidth * controller.animation.value,
                  decoration: BoxDecoration(
                    color: COLOR_WHITE,
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
              ),

              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CounterTimeWidget(),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
