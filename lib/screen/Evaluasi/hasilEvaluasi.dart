import 'package:belajar_berhitung/Provider/user.dart';
import 'package:belajar_berhitung/custom/customTheme.dart';
import 'package:belajar_berhitung/custom/leaderboardmodel.dart';
import 'package:belajar_berhitung/custom/question_controller.dart';
import 'package:belajar_berhitung/custom/verticalSpace.dart';
import 'package:belajar_berhitung/screen/Evaluasi/rekapEvaluasi.dart';
import 'package:belajar_berhitung/screen/homepageScreen.dart';
import 'package:belajar_berhitung/widget/Picture/nolwidget.dart';
import 'package:belajar_berhitung/widget/Picture/sembilanwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HasilEvaluasiScreen extends StatefulWidget {
  static const routeName = '/HasilEvaluasi-screen';

  @override
  _HasilEvaluasiScreenState createState() => _HasilEvaluasiScreenState();
}

class _HasilEvaluasiScreenState extends State<HasilEvaluasiScreen> {
  final _controller = Get.put(QuestionController());
  SharedPreferences sharedPreferences;

  @override
  void initState() {
    loadSharedPreferencesAndData();
    super.initState();
  }

  void loadSharedPreferencesAndData() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    // int skor = 60;
    final Size size = MediaQuery.of(context).size;
    Pengguna pengguna = Provider.of<Pengguna>(context);
    List<RekapNil> nilpeng = _controller.akumulasinil;

    int skor = 0;

    for (var i = 0; i < nilpeng.length; i++) {
      if (_controller.akumulasinil[i].jawaban ==
          _controller.akumulasinil[i].kunci) {
        skor = skor + 5;
      }
      if (_controller.akumulasinil[i].jawaban !=
          _controller.akumulasinil[i].kunci) {
        skor = skor;
      }
    }

    // if (skor == 0 || skor == null) {
    //   skor = 0;
    // }
    TextStyle styleSelamat = TextStyle(
        letterSpacing: 2.0,
        fontFamily: 'indigo',
        color: COLOR_BLUE,
        fontWeight: FontWeight.normal,
        fontSize: 43);
    TextStyle styleSelamatN = TextStyle(
        letterSpacing: 2.0,
        fontFamily: 'indigo',
        color: COLOR_BLUE,
        fontWeight: FontWeight.normal,
        fontSize: 65);
    TextStyle stylegagal = TextStyle(
        letterSpacing: 2.0,
        fontFamily: 'indigo',
        color: COLOR_RED,
        fontWeight: FontWeight.normal,
        fontSize: 43);
    TextStyle stylegagalN = TextStyle(
        letterSpacing: 2.0,
        fontFamily: 'indigo',
        color: COLOR_RED,
        fontWeight: FontWeight.normal,
        fontSize: 65);
    TextStyle styleNamasek = TextStyle(
        letterSpacing: 1.5,
        fontFamily: 'indigo',
        color: Colors.black,
        fontWeight: FontWeight.w900,
        fontSize: 18);

    return Scaffold(
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
              addVerticalSpace(25),
              Container(
                height: size.height * 0.63,
                width: size.width - 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: COLOR_WHITE,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Nama:  ',
                                style: styleNamasek,
                              ),
                              Text(
                                pengguna.dataPengguna[0].nama,
                                style: styleNamasek,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Nomor:  ',
                                style: styleNamasek,
                              ),
                              Text(
                                pengguna.dataPengguna[0].nomorsek,
                                style: styleNamasek,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Sekolah:  ',
                                style: styleNamasek,
                              ),
                              Text(
                                pengguna.dataPengguna[0].sekolah,
                                style: styleNamasek,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (skor >= 75)
                          Text(
                            'Selamat Anda',
                            style: styleSelamat,
                          ),
                        if (skor >= 75)
                          Text(
                            'Lulus',
                            style: styleSelamat,
                          ),
                        if (skor < 75)
                          Text(
                            'Maaf Anda ',
                            style: stylegagal,
                          ),
                        if (skor < 75)
                          Text(
                            'Belum Lulus',
                            style: stylegagal,
                          ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Skor',
                          style: styleNamasek,
                        ),
                        if (skor >= 75)
                          Text(
                            (skor).toString(),
                            style: styleSelamatN,
                          ),
                        if (skor < 75)
                          Text(
                            (skor).toString(),
                            style: stylegagalN,
                          ),
                      ],
                    ),
                  ],
                ),
              ),
              addVerticalSpace(17),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (skor >= 75) SembilanWidget(),
                  if (skor < 75) Nolwidget(),
                  Column(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              )),
                          child: Text(
                            "Rekap Nilai",
                            style: TextStyle(
                                fontFamily: 'Soegoe',
                                color: Colors.blue,
                                fontWeight: FontWeight.w700,
                                fontSize: 15),
                          ),
                          onPressed: () {
                            Get.to(RekapEvaluasi());
                          }),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: COLOR_RED,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Menu Utama",
                              style: TextStyle(
                                  fontFamily: 'Soegoe',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                          ),
                          onPressed: () {
                            _controller.clearNilai();
                            _controller.addleader(
                              leadhis: LeaderBoard(
                                nama: pengguna.dataPengguna[0].nama,
                                nomor: pengguna.dataPengguna[0].nomorsek,
                                sekolah: pengguna.dataPengguna[0].sekolah,
                                nilai: skor.toString(),
                              ),
                              sharedPreferences: sharedPreferences,
                            );
                            Navigator.of(context)
                                .pushReplacementNamed(HomepageScreen.routeName);
                          }),
                    ],
                  ),
                ],
              ),
              addVerticalSpace(17),
            ],
          ),
        ),
      ),
    );
  }
}
