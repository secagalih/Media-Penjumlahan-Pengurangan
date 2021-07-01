import 'package:belajar_berhitung/Provider/opsiJawabanEva.dart';
import 'package:belajar_berhitung/Provider/opsiPengurangan.dart';
import 'package:belajar_berhitung/Provider/opsiPenjumlahan.dart';
import 'package:belajar_berhitung/Provider/soalevaluasi.dart';
import 'package:belajar_berhitung/Provider/soallatPengurangan.dart';
import 'package:belajar_berhitung/Provider/soallatPenjumlahan.dart';
import 'package:belajar_berhitung/Provider/user.dart';

import 'package:belajar_berhitung/screen/Evaluasi/hasilEvaluasi.dart';
import 'package:belajar_berhitung/screen/Latihan/PenguranganEasy.dart';
import 'package:belajar_berhitung/screen/Latihan/PenguranganHard.dart';
import 'package:belajar_berhitung/screen/Latihan/PenjumlahanHard.dart';
import 'package:belajar_berhitung/screen/Latihan/pembahasanPengurlat.dart';
import 'package:belajar_berhitung/screen/Latihan/pembahasanPenjumLat.dart';
import 'package:belajar_berhitung/screen/PengembangScreen.dart';
import 'package:belajar_berhitung/screen/Evaluasi/evaluasi.dart';
import 'package:belajar_berhitung/screen/homepageScreen.dart';
import 'package:belajar_berhitung/screen/indikatorScreen.dart';
import 'package:belajar_berhitung/screen/kdindikatorscreen.dart';
import 'package:belajar_berhitung/screen/Latihan/latihanScreen.dart';
import 'package:belajar_berhitung/screen/leaderboardScreen.dart';
import 'package:belajar_berhitung/screen/loginScreen.dart';
import 'package:belajar_berhitung/screen/Latihan/penjumlahanEasy.dart';
import 'package:flutter/material.dart';
import 'package:belajar_berhitung/custom/customTheme.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => SoalEvaluasi(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => LatihanPejumEasy(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => LatihanPengurHard(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => LatihanPengurEasy(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => LatihanPejumHard(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => OpsiEvaluasi(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => OpsipenjumlahanEasy(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => OpsipenjumlahanHard(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => OpsiPenguranganEasy(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => OpsiPenguranganHard(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Pengguna(),
        ),
      ],
      child: GetMaterialApp(
        theme: ThemeData(
          textTheme: tEXTTHEMEDEFAULT,
        ),
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
        routes: {
          HomepageScreen.routeName: (ctx) => HomepageScreen(),
          PengembangScreen.routeName: (ctx) => PengembangScreen(),
          KdIndikatorScreen.routeName: (ctx) => KdIndikatorScreen(),
          LatihanScreen.routeName: (ctx) => LatihanScreen(),
          EvaluasiScreen.routeName: (ctx) => EvaluasiScreen(),
          HasilEvaluasiScreen.routeName: (ctx) => HasilEvaluasiScreen(),
          IndikatorScreen.routeName: (ctx) => IndikatorScreen(),
          PenjumlahanLatEasy.routeName: (ctx) => PenjumlahanLatEasy(),
          PenjumlahanlatHard.routeName: (ctx) => PenjumlahanlatHard(),
          PenguranganLatHard.routeName: (ctx) => PenguranganLatHard(),
          PEnguranganLatEasy.routeName: (ctx) => PEnguranganLatEasy(),
          PembahasanPenjumLat.routeName: (ctx) => PembahasanPenjumLat(),
          PembahasanPengurLat.routeName: (ctx) => PembahasanPengurLat(),
          LeaderboardScreen.routeName: (ctx) => LeaderboardScreen(),
        },
      ),
    );
  }
}
