import 'package:belajar_berhitung/custom/customTheme.dart';
import 'package:belajar_berhitung/custom/question_controller.dart';
import 'package:belajar_berhitung/custom/verticalSpace.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RekapEvaluasi extends StatelessWidget {
  final _controller = Get.put(QuestionController());

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            color: COLOR_BACKGROUND1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Rekap',
                        style: TextStyle(
                            letterSpacing: 2.0,
                            fontFamily: 'indigo',
                            color: COLOR_RED,
                            fontWeight: FontWeight.normal,
                            fontSize: 23),
                      ),
                      Text(
                        'Evaluasi',
                        style: TextStyle(
                            letterSpacing: 2.0,
                            fontFamily: 'indigo',
                            color: COLOR_RED,
                            fontWeight: FontWeight.normal,
                            fontSize: 43),
                      ),
                    ],
                  ),
                ),
              ),
              addVerticalSpace(17),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: COLOR_WHITE,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nomor',
                          style: themeData.textTheme.headline5
                              .copyWith(fontSize: 27),
                        ),
                        Text(
                          'Hasil',
                          style: themeData.textTheme.headline5
                              .copyWith(fontSize: 27),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: COLOR_WHITE,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: _controller.akumulasinil.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                _controller.akumulasinil[index].nomor
                                    .toString(),
                                style: themeData.textTheme.headline1.copyWith(
                                    color: Colors.black, fontSize: 23),
                              ),
                              if (_controller.akumulasinil[index].jawaban ==
                                  _controller.akumulasinil[index].kunci)
                                Text('Benar',
                                    style: themeData.textTheme.headline1
                                        .copyWith(
                                            color: Colors.green, fontSize: 23)),
                              if (_controller.akumulasinil[index].jawaban !=
                                  _controller.akumulasinil[index].kunci)
                                Text('Salah',
                                    style: themeData.textTheme.headline1
                                        .copyWith(
                                            color: Colors.red, fontSize: 23)),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: COLOR_BLUE,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          )),
                      child: Text(
                        "Kembali",
                        style: TextStyle(
                            fontFamily: 'Soegoe',
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
