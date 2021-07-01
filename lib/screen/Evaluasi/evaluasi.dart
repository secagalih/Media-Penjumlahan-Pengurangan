import 'package:belajar_berhitung/Provider/opsiJawabanEva.dart';
import 'package:belajar_berhitung/Provider/soalevaluasi.dart';

import 'package:belajar_berhitung/custom/customTheme.dart';
import 'package:belajar_berhitung/custom/question_controller.dart';
import 'package:belajar_berhitung/custom/verticalSpace.dart';

import 'package:belajar_berhitung/screen/Evaluasi/hasilEvaluasi.dart';
import 'package:belajar_berhitung/widget/SoalCeritaWidget.dart';
import 'package:belajar_berhitung/widget/SoalEvaPG.dart';

import 'package:belajar_berhitung/widget/progress_bar.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class EvaluasiScreen extends StatefulWidget {
  static const routeName = '/Evaluasi-screen';
  @override
  _EvaluasiScreenState createState() => _EvaluasiScreenState();
}

class _EvaluasiScreenState extends State<EvaluasiScreen> {
  final _controller = Get.put(QuestionController());
  @override
  void initState() {
    _myColora = COLOR_BACKGROUND1;
    _myColorb = COLOR_BACKGROUND1;
    _myColorc = COLOR_BACKGROUND1;
    super.initState();
  }

  String counnt = '0';
  Color _myColora = COLOR_BACKGROUND1;
  Color _myColorb = COLOR_BACKGROUND1;
  Color _myColorc = COLOR_BACKGROUND1;

  String pilhannihh = '0';
  int nilaiEva = 0;
  Future<bool> _willPopCallback() async {
    // await showDialog or Show add banners or whatever
    // then
    return true; // return true if the route to be popped
  }

  int saatini = 0;
  @override
  Widget build(BuildContext context) {
    final nummber = ModalRoute.of(context).settings.arguments;
    SoalEvaluasi soalEpa = Provider.of<SoalEvaluasi>(context, listen: false);
    OpsiEvaluasi opsiPilihan =
        Provider.of<OpsiEvaluasi>(context, listen: false);

    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    TextStyle styleHere = TextStyle(
        letterSpacing: 1.0,
        fontFamily: 'Soegoe',
        color: COLOR_WHITE,
        fontWeight: FontWeight.w900,
        fontSize: 30);

    if (nummber != null || nummber == 0) {
      saatini = nummber;
    }
    if (pilhannihh == opsiPilihan.opsiJbnEvaluasi[saatini].a) {
      _myColora = Colors.red;
    } else {
      _myColora = Colors.blue;
    }
    if (pilhannihh == opsiPilihan.opsiJbnEvaluasi[saatini].b) {
      _myColorb = Colors.red;
    } else {
      _myColorb = Colors.blue;
    }
    if (pilhannihh == opsiPilihan.opsiJbnEvaluasi[saatini].c) {
      _myColorc = Colors.red;
    } else {
      _myColorc = Colors.blue;
    }
    void nextSlide() {
      setState(() {
        _controller.updateNilai(
            index: saatini,
            jawban: pilhannihh,
            kunci: opsiPilihan.opsiJbnEvaluasi[saatini].kuncih);
        saatini += 1;

        Navigator.of(context)
            .pushNamed(EvaluasiScreen.routeName, arguments: saatini);
      });
    }

    void nexLast() {
      setState(() {
        _controller.updateNilai(
            index: saatini,
            jawban: pilhannihh,
            kunci: opsiPilihan.opsiJbnEvaluasi[saatini].kuncih);
        saatini += 1;
        _controller.stoptimer();
        Get.off(HasilEvaluasiScreen());
      });
    }

    print('saat ini');
    print(saatini);

    return WillPopScope(
      onWillPop: _willPopCallback,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: COLOR_BACKGROUND1,
            child: Column(
              children: [
                Container(
                  height: size.height * 0.17,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    color: COLOR_WHITE,
                  ),
                  child: Center(
                    child: Text(
                      'Evaluasi',
                      style: TextStyle(
                          letterSpacing: 2.0,
                          fontFamily: 'indigo',
                          color: COLOR_RED,
                          fontWeight: FontWeight.normal,
                          fontSize: 43),
                    ),
                  ),
                ),
                addVerticalSpace(15),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ProgressBar(),
                ),
                Container(
                  height: size.height * 0.87,
                  width: size.width - 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    color: COLOR_WHITE,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (saatini <= 11)
                        SoalEvaPGWIdget(
                          nomor:
                              soalEpa.soalEvaluasiM[saatini].noans.toString(),
                          soal: soalEpa.soalEvaluasiM[saatini].soal,
                        ),
                      if (saatini >= 12)
                        SoalCeritaWidget(
                          nomersoal:
                              soalEpa.soalEvaluasiM[saatini].noans.toString(),
                          pertanyaan: soalEpa.soalEvaluasiM[saatini].soal,
                        ),
                      //A
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: _myColora,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)),
                            )),
                        onPressed: () {
                          setState(() {
                            pilhannihh = opsiPilihan.opsiJbnEvaluasi[saatini].a;
                          });
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                'A. ${opsiPilihan.opsiJbnEvaluasi[saatini].a}',
                                style: styleHere,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //B
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: _myColorb,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)),
                            )),
                        onPressed: () {
                          setState(() {
                            pilhannihh = opsiPilihan.opsiJbnEvaluasi[saatini].b;
                          });
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                'B. ${opsiPilihan.opsiJbnEvaluasi[saatini].b}',
                                style: styleHere,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //C
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: _myColorc,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)),
                            )),
                        onPressed: () {
                          setState(() {
                            pilhannihh = opsiPilihan.opsiJbnEvaluasi[saatini].c;
                          });
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                'C. ${opsiPilihan.opsiJbnEvaluasi[saatini].c}',
                                style: styleHere,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                addVerticalSpace(23),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (saatini < 19)
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
                                    Future.delayed(
                                        const Duration(milliseconds: 500), () {
                                      nextSlide();
                                    });
                                  }),
                      if (saatini >= 19)
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: COLOR_RED,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Lihat Nilai",
                                  style: themeData.textTheme.headline4),
                            ),
                            onPressed: pilhannihh == '0' || pilhannihh == null
                                ? null
                                : () {
                                    Future.delayed(
                                        const Duration(milliseconds: 500), () {
                                      nexLast();
                                    });
                                  }),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
