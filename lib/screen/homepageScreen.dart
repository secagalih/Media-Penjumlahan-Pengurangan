import 'package:audioplayers/audioplayers.dart';
import 'package:belajar_berhitung/custom/customTheme.dart';
import 'package:belajar_berhitung/custom/question_controller.dart';
import 'package:belajar_berhitung/custom/verticalSpace.dart';
import 'package:belajar_berhitung/screen/Evaluasi/evaluasi.dart';

import 'package:belajar_berhitung/screen/kdindikatorscreen.dart';
import 'package:belajar_berhitung/screen/Latihan/latihanScreen.dart';
import 'package:belajar_berhitung/widget/Picture/eightwidget.dart';
import 'package:belajar_berhitung/widget/Picture/sevenWidget.dart';
import 'package:belajar_berhitung/widget/dialogquit.dart';

import 'package:belajar_berhitung/widget/headlinehome.dart';
import 'package:belajar_berhitung/widget/Picture/onewidget.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomepageScreen extends StatefulWidget {
  static const routeName = '/Home-screen';
  @override
  _HomepageScreenState createState() => _HomepageScreenState();
}

AudioPlayer advancedPlayer;

class _HomepageScreenState extends State<HomepageScreen> {
  QuestionController _qnController = Get.put(QuestionController());
  Future<bool> _willPopCallback() async {
    showDialog(
      context: context,
      builder: (context) {
        return DialogQuit(
          advancedPlayer: advancedPlayer,
        );
      },
    );
    return true; // return true if the route to be popped
  }

  @override
  void initState() {
    super.initState();
    loadMusic();
  }

  @override
  void dispose() {
    advancedPlayer.setVolume(0);
    advancedPlayer.stop();
    advancedPlayer = null;

    super.dispose();
  }

  Future loadMusic() async {
    advancedPlayer = await AudioCache().loop('Music/bgm.mp3');
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final Size size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: _willPopCallback,
      child: Scaffold(
        body: Container(
          color: COLOR_BACKGROUND1,
          child: Column(
            children: [
              HeadlineHomeWidget(size: size, themeData: themeData),
              addVerticalSpace(35),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                onPressed: () {
                  Navigator.of(context).pushNamed(KdIndikatorScreen.routeName);
                },
                child: Container(
                  height: size.height * 0.15,
                  width: size.width - 80,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'KD Indikator',
                          style: themeData.textTheme.headline3,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: OneWidget(),
                      ),
                    ],
                  ),
                ),
              ),
              addVerticalSpace(30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                onPressed: () {
                  Navigator.of(context).pushNamed(LatihanScreen.routeName);
                },
                child: Container(
                  height: size.height * 0.15,
                  width: size.width - 80,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'Latihan',
                          style: themeData.textTheme.headline3,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: SevenWidget(),
                      ),
                    ],
                  ),
                ),
              ),
              addVerticalSpace(30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                onPressed: () {
                  _qnController.startTimer();
                  Get.to(EvaluasiScreen());
                  // Navigator.of(context).pushNamed(HasilEvaluasiScreen.routeName);
                },
                child: Container(
                  height: size.height * 0.15,
                  width: size.width - 80,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'Evaluasi',
                          style: themeData.textTheme.headline3,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: EightWidget(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
