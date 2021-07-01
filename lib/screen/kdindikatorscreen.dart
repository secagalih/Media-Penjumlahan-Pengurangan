import 'package:belajar_berhitung/custom/customTheme.dart';
import 'package:belajar_berhitung/custom/verticalSpace.dart';
import 'package:belajar_berhitung/screen/indikatorScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KdIndikatorScreen extends StatelessWidget {
  static const routeName = '/KdIndikator-screen';

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                addVerticalSpace(size.height * 0.05),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  child: Container(
                    height: size.height * 0.15,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: COLOR_RED,
                    ),
                    child: Center(
                      child: Text(
                        'Komptensi Dasar',
                        style: themeData.textTheme.headline2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 3,
                  color: Colors.black,
                  indent: 25,
                  endIndent: 25,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    height: size.height * 0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: COLOR_BACKGROUND1,
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '3.3 Menjelaskan dan melakukan penjumlahan dan pengurangan bilangan yang melibatkan bilangan cacah sampai dengan 999 dalam kehidupan sehari-hari serta mengaitkan penjumlahan dan pengurangan',
                              style: themeData.textTheme.headline6,
                              textAlign: TextAlign.justify,
                            ),
                            addVerticalSpace(15),
                            Text(
                              '4.3 Menyelesaikan masalah penjumlahan dan pengurangan bilangan yang melibatkan bilangan 999 dalam kehidupan sehari-hari serta mengaitkan penjumlahan dan pengurangan',
                              style: themeData.textTheme.headline6,
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 20,
            bottom: 10,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: COLOR_RED,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Kembali", style: themeData.textTheme.headline4),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ),
          Positioned(
            right: 20,
            bottom: 10,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: COLOR_BLUE,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Text("Indikator", style: themeData.textTheme.headline4),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(IndikatorScreen.routeName);
                }),
          )
        ],
      ),
    );
  }
}
