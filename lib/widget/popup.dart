import 'package:audioplayers/audioplayers.dart';
import 'package:belajar_berhitung/custom/customTheme.dart';
import 'package:belajar_berhitung/screen/PengembangScreen.dart';
import 'package:belajar_berhitung/screen/homepageScreen.dart';
import 'package:belajar_berhitung/screen/leaderboardScreen.dart';
import 'package:belajar_berhitung/widget/dialogquit.dart';

import 'package:flutter/material.dart';

class PopUpWidgetHome extends StatefulWidget {
  final AudioPlayer advancedPlayer;

  const PopUpWidgetHome({Key key, this.advancedPlayer}) : super(key: key);

  @override
  _PopUpWidgetHomeState createState() => _PopUpWidgetHomeState();
}

class _PopUpWidgetHomeState extends State<PopUpWidgetHome> {
  @override
  Widget build(BuildContext context) {
    bool music = true;
    IconData icon = Icons.music_off;
    bool onOfMusic() {
      if (music == true) {
        advancedPlayer.setVolume(0);
        icon = Icons.music_note;
        return music = false;
      }
      if (music == false) {
        advancedPlayer.setVolume(1);
        icon = Icons.music_off;
        return music = true;
      }
    }

    return PopupMenuButton(
      icon: Icon(
        Icons.more_vert_rounded,
        color: COLOR_WHITE,
        size: 30,
      ),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Row(
            children: [Icon(Icons.people), Text(' Pegembang')],
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: Row(
            children: [
              Icon(
                Icons.school_outlined,
              ),
              Text(' Score Board')
            ],
          ),
        ),
        PopupMenuItem(
          value: 3,
          child: Row(
            children: [
              Icon(
                icon,
              ),
              Text('Music ')
            ],
          ),
        ),
        PopupMenuItem(
          value: 4,
          child: Row(
            children: [
              Icon(
                Icons.exit_to_app,
                color: COLOR_RED,
              ),
              Text(' Keluar')
            ],
          ),
        ),
      ],
      onSelected: (value) {
        if (value == 1) {
          Navigator.of(context).pushNamed(PengembangScreen.routeName);
        }
        if (value == 2) {
          Navigator.of(context).pushNamed(LeaderboardScreen.routeName);
        }
        if (value == 3) {
          onOfMusic();
        }
        if (value == 4) {
          showDialog(
            context: context,
            builder: (context) {
              return DialogQuit();
            },
          );
        }
      },
    );
  }
}
