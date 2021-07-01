import 'package:belajar_berhitung/custom/customTheme.dart';
import 'package:belajar_berhitung/custom/verticalSpace.dart';
import 'package:flutter/material.dart';

class SoalEvaPGWIdget extends StatelessWidget {
  final String soal;
  final String nomor;

  const SoalEvaPGWIdget({
    Key key,
    @required this.nomor,
    this.soal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    TextStyle styleHere = TextStyle(
        fontFamily: 'Soegoe',
        color: COLOR_RED,
        fontWeight: FontWeight.w900,
        fontSize: 35);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 37,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              color: COLOR_BACKGROUND1,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Soal ',
                  style: themeData.textTheme.headline3,
                ),
                Text(
                  '${int.tryParse(nomor)}',
                  style: themeData.textTheme.headline3,
                ),
              ],
            ),
          ),
          addVerticalSpace(10),
          Text(
            soal,
            style: styleHere,
          ),
        ],
      ),
    );
  }
}
