import 'package:belajar_berhitung/Provider/soallatPenjumlahan.dart';
import 'package:belajar_berhitung/custom/customTheme.dart';
import 'package:belajar_berhitung/custom/question_controller.dart';
import 'package:belajar_berhitung/custom/verticalSpace.dart';
import 'package:belajar_berhitung/screen/Latihan/PenjumlahanHard.dart';
import 'package:belajar_berhitung/screen/Latihan/penjumlahanEasy.dart';
import 'package:belajar_berhitung/screen/homepageScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class PembahasanPenjumLat extends StatefulWidget {
  static const routeName = '/PembahasanPenjumlat-screen';
  @override
  _PembahasanPenjumLatState createState() => _PembahasanPenjumLatState();
}

class _PembahasanPenjumLatState extends State<PembahasanPenjumLat> {
  final _controller = Get.put(QuestionController());
  Color _myColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    final dataLat = ModalRoute.of(context).settings.arguments as List;
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    LatihanPejumEasy soalLatEasy =
        Provider.of<LatihanPejumEasy>(context, listen: false);
    LatihanPejumHard soalLatHard =
        Provider.of<LatihanPejumHard>(context, listen: false);
    int nomor = dataLat[2] + 1;
    String hasil = '';
    print('jwban');
    print(dataLat[3]);
    print('kuncih');
    print(soalLatEasy.soalPenjumlahanEasyM[dataLat[2]].jawaban);

    if (dataLat[1] == 'Easy') {
      if (dataLat[3] == soalLatEasy.soalPenjumlahanEasyM[dataLat[2]].jawaban) {
        hasil = 'Benar';
        _myColor = Colors.blue;
      } else {
        hasil = 'Salah';
        _myColor = Colors.red;
      }
    } else {
      if (dataLat[3] == soalLatHard.soalPenjumlahanHard[dataLat[2]].jawaban) {
        hasil = 'Benar';
        _myColor = Colors.blue;
      } else {
        hasil = 'Salah';
        _myColor = Colors.red;
      }
    }

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: size.height * 0.2,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                color: COLOR_RED,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dataLat[0],
                      style: themeData.textTheme.headline2,
                    ),
                    addVerticalSpace(10),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        color: COLOR_WHITE,
                      ),
                      child: Center(
                        child: Text(
                          dataLat[1],
                          style: themeData.textTheme.headline1,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            addVerticalSpace(25),
            Container(
              height: size.height * 0.6,
              width: size.width - 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                color: COLOR_BACKGROUND1,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              '$nomor',
                              style: themeData.textTheme.headline3,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 37,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          color: _myColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              hasil,
                              style: TextStyle(
                                fontFamily: 'Soegoe',
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 270,
                    width: 270,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      color: COLOR_WHITE,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Pembahasan',
                          style: themeData.textTheme.headline3,
                        ),
                        Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                if (dataLat[1] == 'Hard')
                                  Image.asset(
                                    'lib/asset/PenjumlahanHard/lpjh$nomor.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                if (dataLat[1] != 'Hard')
                                  Image.asset(
                                    'lib/asset/PenjumlahanEasy/lpje$nomor.jpg',
                                    fit: BoxFit.fill,
                                  ),
                              ],
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            addVerticalSpace(23),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (nomor < 10)
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: COLOR_BLUE,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Selanjutnya",
                              style: themeData.textTheme.headline4),
                        ),
                        onPressed: () {
                          if (dataLat[1] == 'Hard') {
                            Navigator.of(context).pushNamed(
                                PenjumlahanlatHard.routeName,
                                arguments: nomor);
                          } else {
                            Navigator.of(context).pushNamed(
                                PenjumlahanLatEasy.routeName,
                                arguments: nomor);
                          }
                        }),
                  if (nomor >= 10)
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: COLOR_RED,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Menu Utama",
                              style: themeData.textTheme.headline4),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(HomepageScreen.routeName);
                        }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
