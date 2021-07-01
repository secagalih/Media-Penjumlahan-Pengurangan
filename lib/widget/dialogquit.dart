import 'package:audioplayers/audioplayers.dart';
import 'package:belajar_berhitung/custom/customTheme.dart';
import 'package:belajar_berhitung/custom/verticalSpace.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DialogQuit extends StatelessWidget {
  final AudioPlayer advancedPlayer;

  const DialogQuit({Key key, this.advancedPlayer}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                    'Yakin Ingin keluar',
                    style: themeData.textTheme.headline3,
                  ),
                ],
              ),
            ),
            addVerticalSpace(20),
            Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: COLOR_BLUE,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: size.height - 60,
                    height: size.height * 0.1,
                    child: Center(
                      child: Text(
                        'Tidak',
                        style: themeData.textTheme.headline2,
                      ),
                    ),
                  ),
                ),
                addVerticalSpace(20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: COLOR_RED,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                  onPressed: () {
                    advancedPlayer.setVolume(0);
                    advancedPlayer.stop();

                    SystemNavigator.pop();
                  },
                  child: Container(
                    width: size.height - 60,
                    height: size.height * 0.1,
                    child: Center(
                      child: Text(
                        'Ya',
                        style: themeData.textTheme.headline2,
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
