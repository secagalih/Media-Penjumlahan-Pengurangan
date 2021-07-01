import 'dart:convert';

import 'package:belajar_berhitung/custom/customTheme.dart';
import 'package:belajar_berhitung/custom/leaderboardmodel.dart';
import 'package:belajar_berhitung/custom/question_controller.dart';
import 'package:belajar_berhitung/custom/verticalSpace.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';

class LeaderboardScreen extends StatefulWidget {
  static const routeName = '/leaderboard_screen';
  @override
  _LeaderboardScreenState createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  final _controller = Get.put(QuestionController());
  SharedPreferences sharedPreferences;
  // List<LeaderBoard> _listleaderboard = [];
  @override
  void initState() {
    loadSharedPrf();
    super.initState();
  }

  void loadSharedPrf() async {
    sharedPreferences = await SharedPreferences.getInstance();
    _controller.loadDataleader(sharedPreferences);
    setState(() {});
  }

  // void loadDataleader() {
  //   List<String> listString = sharedPreferences.getStringList('list');
  //   if (listString != null) {
  //     _listleaderboard = listString
  //         .map((item) => LeaderBoard.fromMap(json.decode(item)))
  //         .toList();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Score Board',
            style: themeData.textTheme.headline1
                .copyWith(fontSize: 27, letterSpacing: 3),
          ),
          backgroundColor: COLOR_BACKGROUND1,
          centerTitle: true,
        ),
        body: _controller.dataLeaderboard.isEmpty
            ? emptyList()
            : buildListView());
  }

  Widget emptyList() {
    final ThemeData themeData = Theme.of(context);
    return Center(
        child: Text(
      'Data Kosong',
      style: themeData.textTheme.headline1,
    ));
  }

  Widget buildListView() {
    final ThemeData themeData = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Nama',
                style: themeData.textTheme.headline1,
              ),
              Text(
                'Nomor',
                style: themeData.textTheme.headline1,
              ),
              Text(
                'Sekolah',
                style: themeData.textTheme.headline1,
              ),
              Text(
                'Nilai',
                style: themeData.textTheme.headline1,
              ),
            ],
          ),
          addVerticalSpace(13),
          Expanded(
            child: ListView.builder(
              itemCount: _controller.dataLeaderboard.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _controller.dataLeaderboard[index].nama,
                      overflow: TextOverflow.ellipsis,
                      style: themeData.textTheme.headline1
                          .copyWith(color: Colors.black, fontSize: 17),
                    ),
                    Text(
                      _controller.dataLeaderboard[index].nomor,
                      overflow: TextOverflow.ellipsis,
                      style: themeData.textTheme.headline1
                          .copyWith(color: Colors.black, fontSize: 17),
                    ),
                    Text(
                      _controller.dataLeaderboard[index].sekolah,
                      overflow: TextOverflow.ellipsis,
                      style: themeData.textTheme.headline1
                          .copyWith(color: Colors.black, fontSize: 17),
                    ),
                    Text(
                      _controller.dataLeaderboard[index].nilai,
                      overflow: TextOverflow.ellipsis,
                      style: themeData.textTheme.headline1
                          .copyWith(color: Colors.black, fontSize: 17),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
