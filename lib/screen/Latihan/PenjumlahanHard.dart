import 'package:belajar_berhitung/Provider/opsiPenjumlahan.dart';
import 'package:belajar_berhitung/Provider/soallatPenjumlahan.dart';
import 'package:belajar_berhitung/custom/customTheme.dart';
import 'package:belajar_berhitung/custom/question_controller.dart';
import 'package:belajar_berhitung/custom/verticalSpace.dart';
import 'package:belajar_berhitung/screen/Latihan/pembahasanPenjumLat.dart';
import 'package:belajar_berhitung/widget/SoalCeritaWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class PenjumlahanlatHard extends StatefulWidget {
  static const routeName = '/PenjumlahanlatHard-screen';
  @override
  _PenjumlahanlatHardState createState() => _PenjumlahanlatHardState();
}

class _PenjumlahanlatHardState extends State<PenjumlahanlatHard> {
  final _controller = Get.put(QuestionController());

  final _jawabanController = TextEditingController();
  String _nilaiPilihan = '0';
  String counnt = ' 0';
  Color _myColora = Colors.blue;
  Color _myColorb = Colors.blue;
  Color _myColorc = Colors.blue;

  String pilhannihh = '0';
  Future<bool> _willPopCallback() async {
    // await showDialog or Show add banners or whatever
    // then
    return true; // return true if the route to be popped
  }

  @override
  Widget build(BuildContext context) {
    final nummber = ModalRoute.of(context).settings.arguments;
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    LatihanPejumHard soalLatHard =
        Provider.of<LatihanPejumHard>(context, listen: false);
    OpsipenjumlahanHard opsiPilihan =
        Provider.of<OpsipenjumlahanHard>(context, listen: false);
    TextStyle styleHere = TextStyle(
        letterSpacing: 1.0,
        fontFamily: 'Soegoe',
        color: COLOR_WHITE,
        fontWeight: FontWeight.w900,
        fontSize: 23);
    int saatini = int.tryParse(counnt);
    print('num');
    print(nummber);
    print('pilihin');
    print(pilhannihh);
    print('nialipil');
    print(_nilaiPilihan);

    if (nummber != null || nummber == 0) {
      saatini = nummber;
    }
    if (pilhannihh == opsiPilihan.opsiJbnPenjumlahanHard[saatini].a) {
      _myColora = Colors.red;
    } else {
      _myColora = Colors.blue;
    }
    if (pilhannihh == opsiPilihan.opsiJbnPenjumlahanHard[saatini].b) {
      _myColorb = Colors.red;
    } else {
      _myColorb = Colors.blue;
    }
    if (pilhannihh == opsiPilihan.opsiJbnPenjumlahanHard[saatini].c) {
      _myColorc = Colors.red;
    } else {
      _myColorc = Colors.blue;
    }
    if (_nilaiPilihan != '0') {
      pilhannihh = _nilaiPilihan;
    }
    return WillPopScope(
      onWillPop: _willPopCallback,
      child: Scaffold(
        body: SingleChildScrollView(
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
                        'Penjumlahan',
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
                            'Hard',
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
                height: size.height * 0.7,
                width: size.width - 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: COLOR_BACKGROUND1,
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SoalCeritaWidget(
                      pertanyaan:
                          soalLatHard.soalPenjumlahanHard[saatini].pertanyaan,
                      nomersoal: soalLatHard.soalPenjumlahanHard[saatini].noans
                          .toString(),
                    ),
                    if (saatini < 5)
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: _myColora,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)),
                            )),
                        onPressed: () {
                          setState(() {
                            pilhannihh =
                                opsiPilihan.opsiJbnPenjumlahanHard[saatini].a;
                          });
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                'A. ${opsiPilihan.opsiJbnPenjumlahanHard[saatini].a}',
                                style: styleHere,
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (saatini < 5)
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: _myColorb,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)),
                            )),
                        onPressed: () {
                          setState(() {
                            pilhannihh =
                                opsiPilihan.opsiJbnPenjumlahanHard[saatini].b;
                          });
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                'B. ${opsiPilihan.opsiJbnPenjumlahanHard[saatini].b}',
                                style: styleHere,
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (saatini < 5)
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: _myColorc,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)),
                            )),
                        onPressed: () {
                          setState(() {
                            pilhannihh =
                                opsiPilihan.opsiJbnPenjumlahanHard[saatini].c;
                          });
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                'C. ${opsiPilihan.opsiJbnPenjumlahanHard[saatini].c}',
                                style: styleHere,
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (saatini >= 5)
                      Container(
                        child: TextField(
                          key: ValueKey('opsi'),
                          keyboardType: TextInputType.number,
                          style: themeData.textTheme.headline3,
                          controller: _jawabanController,
                          decoration: InputDecoration(
                              hintText: "Tulis Jawaban di Sini"),
                          onChanged: (value) {
                            print('pilihin2');
                            print(pilhannihh);
                            print('nialipil2');
                            print(_nilaiPilihan);

                            print('palue');
                            print(value);
                          },
                          onSubmitted: (value) {
                            _nilaiPilihan = value;
                          },
                        ),
                      ),
                    if (saatini >= 5) addVerticalSpace(10),
                  ],
                ),
              ),
              addVerticalSpace(23),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                        onPressed: pilhannihh == '0' || pilhannihh == null
                            ? null
                            : () {
                                Navigator.of(context).pushNamed(
                                    PembahasanPenjumLat.routeName,
                                    arguments: [
                                      'Penjumlahan',
                                      'Hard',
                                      saatini,
                                      pilhannihh
                                    ]);
                              }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
