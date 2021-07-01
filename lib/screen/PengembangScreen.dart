import 'package:belajar_berhitung/custom/customTheme.dart';
import 'package:belajar_berhitung/custom/verticalSpace.dart';
import 'package:flutter/material.dart';

class PengembangScreen extends StatelessWidget {
  static const routeName = '/Pengembang-screen';
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    TextStyle styleHere = TextStyle(
        letterSpacing: 1.0,
        fontFamily: 'Soegoe',
        color: Colors.black,
        fontWeight: FontWeight.w900,
        fontSize: 19);
    TextStyle styleHere2 = TextStyle(
        letterSpacing: 1.0,
        fontFamily: 'Soegoe',
        color: Colors.black,
        fontWeight: FontWeight.w900,
        fontSize: 25);

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
                        'Pengembang',
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
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: CircleAvatar(
                              radius: 87,
                              backgroundImage:
                                  AssetImage('lib/asset/fotopakedi.jpeg'),
                            ),
                          ),
                          Text(
                            'Nama:',
                            style: styleHere2,
                          ),
                          Text(
                            'Edy Wahyu Wibowo, S.Pd.',
                            style: styleHere,
                          ),
                          Text(
                            'NIP:',
                            style: styleHere2,
                          ),
                          Text(
                            '19900206 202012 1 003',
                            style: styleHere,
                          ),
                        ],
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
