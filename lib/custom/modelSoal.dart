import 'package:flutter/cupertino.dart';

class Latihan {
  final int noans;
  final String pertanyaan;
  final String n1;
  final String n2;
  final String jawaban;
  Latihan({
    @required this.noans,
    this.pertanyaan,
    this.n1,
    this.n2,
    this.jawaban,
  });
}

class EvaluasiM {
  final int noans;
  final String soal;
  final String jawaban;

  EvaluasiM({
    this.noans,
    this.soal,
    this.jawaban,
  });
}

class EvaluasiStory {
  final String pertanyaan;
  final String jawaban;
  EvaluasiStory({
    this.pertanyaan,
    this.jawaban,
  });
}
