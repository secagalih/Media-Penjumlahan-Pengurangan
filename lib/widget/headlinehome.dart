import 'package:audioplayers/audioplayers.dart';
import 'package:belajar_berhitung/custom/customTheme.dart';
import 'package:belajar_berhitung/widget/Picture/bendera.dart';

import 'package:belajar_berhitung/widget/popup.dart';
import 'package:flutter/material.dart';

class HeadlineHomeWidget extends StatelessWidget {
  final ThemeData themeData;
  final Size size;
  final AudioPlayer advancedPlayer;

  const HeadlineHomeWidget(
      {Key key, this.themeData, this.size, this.advancedPlayer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.3,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: COLOR_WHITE,
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(
                    'Penjumlahan dan pengurangan',
                    style: themeData.textTheme.headline1,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: size.height * 0.2,
            decoration: BoxDecoration(
              color: COLOR_RED,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Mari Belajar',
                              style: themeData.textTheme.headline2,
                            ),
                            Text('Berhitung',
                                style: themeData.textTheme.headline2),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(right: 30.0, top: 20),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                child: Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: COLOR_WHITE,
                                  ),
                                ),
                              ),
                              BenderaWdidget(),
                            ],
                          )),
                    ],
                  ),
                  Positioned(
                    right: 0,
                    top: 15,
                    child: PopUpWidgetHome(
                      advancedPlayer: advancedPlayer,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
