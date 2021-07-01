import 'package:belajar_berhitung/custom/customTheme.dart';
import 'package:belajar_berhitung/widget/Picture/garuda.dart';

import 'package:flutter/material.dart';

class HeadlineLoginWidget extends StatelessWidget {
  final ThemeData themeData;
  final Size size;

  const HeadlineLoginWidget({Key key, this.themeData, this.size})
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
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mari Belajar',
                        style: themeData.textTheme.headline2,
                      ),
                      Text('Berhitung', style: themeData.textTheme.headline2),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: COLOR_WHITE,
                          ),
                        ),
                        GarudaWIdget(),
                      ],
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
