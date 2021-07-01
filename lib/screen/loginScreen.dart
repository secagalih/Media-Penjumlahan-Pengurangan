import 'package:belajar_berhitung/Provider/user.dart';
import 'package:belajar_berhitung/custom/customTheme.dart';
import 'package:belajar_berhitung/custom/verticalSpace.dart';
import 'package:belajar_berhitung/screen/homepageScreen.dart';
import 'package:belajar_berhitung/widget/Picture/tutwuri.dart';
import 'package:belajar_berhitung/widget/dialogquit.dart';

import 'package:belajar_berhitung/widget/headlinelogin.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    _namaController.clear();
    _nomorController.clear();
    _sekolahController.clear();

    super.initState();
  }

  final _namaController = TextEditingController();
  final _nomorController = TextEditingController();
  final _sekolahController = TextEditingController();
  String nama = '';
  String sekolah = '';
  String nomor = '';
  Future<bool> _willPopCallback() async {
    showDialog(
      context: context,
      builder: (context) {
        return DialogQuit();
      },
    );
    return true;
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    Pengguna pengguna = Provider.of<Pengguna>(context);
    return WillPopScope(
      onWillPop: _willPopCallback,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: size.height,
                color: COLOR_BACKGROUND1,
                child: Column(
                  children: [
                    HeadlineLoginWidget(size: size, themeData: themeData),
                    addVerticalSpace(15),
                    TutwuriWidget(),
                    addVerticalSpace(15),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: Container(
                        height: size.height * 0.35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: COLOR_WHITE,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextField(
                                key: ValueKey('Nama'),
                                style: themeData.textTheme.headline3,
                                controller: _namaController,
                                decoration: InputDecoration(hintText: "Nama :"),
                                onSubmitted: (value) {},
                                onChanged: (value) {
                                  print(nama);
                                  nama = _namaController.text;
                                },
                              ),
                              TextField(
                                key: ValueKey('Nomor'),
                                keyboardType: TextInputType.number,
                                style: themeData.textTheme.headline3,
                                controller: _nomorController,
                                decoration:
                                    InputDecoration(hintText: "Nomor :"),
                                onSubmitted: (value) {
                                  value = nomor;
                                  print(nomor);
                                },
                                onChanged: (value) {
                                  nomor = _nomorController.text;

                                  print(nomor);
                                },
                              ),
                              TextField(
                                key: ValueKey('Sekolah'),
                                style: themeData.textTheme.headline3,
                                controller: _sekolahController,
                                decoration:
                                    InputDecoration(hintText: "Sekolah :"),
                                onSubmitted: (value) {
                                  print(sekolah);
                                },
                                onChanged: (value) {
                                  sekolah = _sekolahController.text;

                                  print(nama);
                                  print(nomor);
                                  print(sekolah);
                                },
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
                right: 20,
                bottom: 10,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: COLOR_RED,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          Text("Masuk", style: themeData.textTheme.headline4),
                    ),
                    onPressed: nama == '' || sekolah == '' || nomor == ''
                        ? null
                        : () {
                            pengguna.addPengguna(
                              nama,
                              sekolah,
                              nomor,
                            );
                            Navigator.of(context)
                                .pushReplacementNamed(HomepageScreen.routeName);
                          }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
