import 'package:belajar_berhitung/custom/customTheme.dart';
import 'package:belajar_berhitung/custom/question_controller.dart';
import 'package:belajar_berhitung/custom/verticalSpace.dart';
import 'package:belajar_berhitung/screen/Latihan/PenguranganEasy.dart';
import 'package:belajar_berhitung/screen/Latihan/PenguranganHard.dart';
import 'package:belajar_berhitung/screen/Latihan/PenjumlahanHard.dart';
import 'package:belajar_berhitung/screen/Latihan/penjumlahanEasy.dart';
import 'package:belajar_berhitung/widget/Picture/penguranganwidget.dart';
import 'package:belajar_berhitung/widget/Picture/tambahwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowDialogOpsi extends StatelessWidget {
  final String pilihan;

  const ShowDialogOpsi({Key key, this.pilihan}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(QuestionController());
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    return AlertDialog(
      backgroundColor: COLOR_BACKGROUND1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
      ),
      content: Container(
        height: size.height * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: size.height * 0.13,
              width: size.width - 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                color: COLOR_WHITE,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    pilihan,
                    style: themeData.textTheme.headline3,
                  ),
                  pilihan == 'Pengurangan'
                      ? PenguranganWidget()
                      : TambahWidget(),
                ],
              ),
            ),
            addVerticalSpace(20),
            Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: COLOR_RED,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                  onPressed: () {
                    pilihan == 'Pengurangan'
                        ? Navigator.of(context)
                            .pushNamed(PEnguranganLatEasy.routeName)
                        : Navigator.of(context)
                            .pushNamed(PenjumlahanLatEasy.routeName);
                  },
                  child: Container(
                    width: size.height - 60,
                    height: size.height * 0.1,
                    child: Center(
                      child: Text(
                        'Easy',
                        style: themeData.textTheme.headline2,
                      ),
                    ),
                  ),
                ),
                addVerticalSpace(20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: COLOR_WHITE,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                  onPressed: () {
                    pilihan == 'Pengurangan'
                        ? Navigator.of(context)
                            .pushNamed(PenguranganLatHard.routeName)
                        : Navigator.of(context)
                            .pushNamed(PenjumlahanlatHard.routeName);
                  },
                  child: Container(
                    width: size.height - 60,
                    height: size.height * 0.1,
                    child: Center(
                      child: Text(
                        'Hard',
                        style: themeData.textTheme.headline5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
