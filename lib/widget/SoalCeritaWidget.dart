import 'package:belajar_berhitung/custom/customTheme.dart';
import 'package:belajar_berhitung/custom/verticalSpace.dart';
import 'package:flutter/material.dart';

class SoalCeritaWidget extends StatelessWidget {
  final String pertanyaan;

  final String nomersoal;
  const SoalCeritaWidget({
    Key key,
    this.pertanyaan,
    @required this.nomersoal,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    TextStyle styleHere = TextStyle(
        fontFamily: 'Soegoe',
        letterSpacing: 0.2,
        color: Colors.black,
        fontWeight: FontWeight.w900,
        fontSize: 17);
    return Column(
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
                '${int.tryParse(nomersoal)}',
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  pertanyaan,
                  style: styleHere,
                  textAlign: TextAlign.justify,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
