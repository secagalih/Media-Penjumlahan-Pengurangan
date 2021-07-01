import 'package:belajar_berhitung/custom/customTheme.dart';
import 'package:belajar_berhitung/custom/verticalSpace.dart';
import 'package:flutter/material.dart';

class SoalWidget extends StatelessWidget {
  final String tex1;
  final String tex2;
  final String tex3;
  final String milih;
  const SoalWidget({
    Key key,
    this.tex1,
    this.tex2,
    this.tex3,
    this.milih,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    TextStyle styleHere = TextStyle(
        letterSpacing: 1.0,
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
              color: COLOR_WHITE,
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
                  '${int.tryParse(tex3) + 1}',
                  style: themeData.textTheme.headline3,
                ),
              ],
            ),
          ),
          addVerticalSpace(10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                tex1,
                style: styleHere,
              ),
              if (milih == 'Penjumlahan')
                Text(
                  ' + ',
                  style: styleHere,
                ),
              if (milih == 'Pengurangan')
                Text(
                  ' - ',
                  style: styleHere,
                ),
              Text(
                tex2,
                style: styleHere,
              ),
              Text(
                ' =',
                style: styleHere,
              ),
              Text(
                ' ?',
                style: styleHere,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
