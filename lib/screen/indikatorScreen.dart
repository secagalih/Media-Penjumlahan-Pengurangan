import 'package:belajar_berhitung/custom/customTheme.dart';
import 'package:belajar_berhitung/custom/verticalSpace.dart';
import 'package:flutter/material.dart';

class IndikatorScreen extends StatelessWidget {
  static const routeName = '/Indikator-screen';
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
                        'Indikator',
                        style: themeData.textTheme.headline2,
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
                              'Kompetensi Dasar (KD)',
                              style: themeData.textTheme.headline3,
                              textAlign: TextAlign.center,
                            ),
                            addVerticalSpace(10),
                            Text(
                              '3.3.1 Memahami kalimat matematika yang berkaitan dengan masalah tentang penjumlahan dengan benar.',
                              style: themeData.textTheme.headline6,
                              textAlign: TextAlign.justify,
                            ),
                            addVerticalSpace(10),
                            Text(
                              '3.3.2 Memahami penjumlahan dua bilangan dengan benar',
                              style: themeData.textTheme.headline6,
                              textAlign: TextAlign.justify,
                            ),
                            addVerticalSpace(10),
                            Text(
                              '3.3.3 Memahami pengurangan dua bilangan dengan benar',
                              style: themeData.textTheme.headline6,
                              textAlign: TextAlign.justify,
                            ),
                            addVerticalSpace(10),
                            Text(
                              '4.3.1 Melakukan penjumlahan dan pengurangan dua bilangan dengan teknik amenyimpan dengan benar.',
                              style: themeData.textTheme.headline6,
                              textAlign: TextAlign.justify,
                            ),
                            addVerticalSpace(10),
                            Text(
                              '4.3.2 Melakukan penjumlahan dan pengurangan dua bilangan dalam kehidupan sehari-hari dengan benar.',
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
          )
        ],
      ),
    );
  }
}
