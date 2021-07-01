import 'package:belajar_berhitung/custom/customTheme.dart';
// import 'package:belajar_berhitung/custom/question_controller.dart';
import 'package:belajar_berhitung/custom/verticalSpace.dart';
import 'package:belajar_berhitung/widget/Picture/bapakKumisWidget.dart';
import 'package:belajar_berhitung/widget/Picture/penguranganwidget.dart';
import 'package:belajar_berhitung/widget/Picture/tambahwidget.dart';
import 'package:belajar_berhitung/widget/showdialogOpsi.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class LatihanScreen extends StatefulWidget {
  static const routeName = '/Latihan-screen';
  @override
  _LatihanScreenState createState() => _LatihanScreenState();
}

class _LatihanScreenState extends State<LatihanScreen> {
  // final _controller = Get.put(QuestionController());
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
                        'Latihan',
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
                addVerticalSpace(30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: COLOR_BACKGROUND1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return ShowDialogOpsi(
                          pilihan: 'Penjumlahan',
                        );
                      },
                    );
                  },
                  child: Container(
                    height: size.height * 0.15,
                    width: size.width - 80,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Penjumlahan',
                          style: themeData.textTheme.headline3,
                        ),
                        TambahWidget(),
                      ],
                    ),
                  ),
                ),
                addVerticalSpace(30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: COLOR_BACKGROUND1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return ShowDialogOpsi(
                          pilihan: 'Pengurangan',
                        );
                      },
                    );
                  },
                  child: Container(
                    height: size.height * 0.15,
                    width: size.width - 80,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pengurangan',
                          style: themeData.textTheme.headline3,
                        ),
                        PenguranganWidget(),
                      ],
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
            child: BapakKumisWidget(),
          ),
        ],
      ),
    );
  }
}
