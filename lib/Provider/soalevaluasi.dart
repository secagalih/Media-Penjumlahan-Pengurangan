import 'package:belajar_berhitung/custom/modelSoal.dart';
import 'package:flutter/foundation.dart';

class SoalEvaluasi with ChangeNotifier {
  List<EvaluasiM> _evaluasiM = [
    EvaluasiM(
      noans: 1,
      soal: '267 + _ = 672',
      jawaban: '405',
    ),
    EvaluasiM(
      noans: 2,
      soal: '352 + 178 = _',
      jawaban: '530',
    ),
    EvaluasiM(
      noans: 3,
      soal: '698 + 189 = _ ',
      jawaban: '887',
    ),
    EvaluasiM(
      noans: 4,
      soal: '753 + _ = 965',
      jawaban: '212',
    ),
    EvaluasiM(
      noans: 5,
      soal: '687 – 291 = _ ',
      jawaban: '396',
    ),
    EvaluasiM(
      noans: 6,
      soal: '512 - _ = 213',
      jawaban: '299',
    ),
    EvaluasiM(
      noans: 7,
      soal: '653 – 244 = _',
      jawaban: '409',
    ),
    EvaluasiM(
      noans: 8,
      soal: '276 – 77 = _',
      jawaban: '199',
    ),
    EvaluasiM(
      noans: 9,
      soal: '138 + 52 – 84 =_ ',
      jawaban: '138',
    ),
    EvaluasiM(
      noans: 10,
      soal: '225 + 115 – 90 =_',
      jawaban: '250',
    ),
    EvaluasiM(
      noans: 11,
      soal: '138 – 52 + 84 =_ ',
      jawaban: '170',
    ),
    EvaluasiM(
      noans: 12,
      soal: '225 – 115 + 90 =_ ',
      jawaban: '200',
    ),
    EvaluasiM(
      noans: 13,
      soal:
          'Andi memiliki kelereng sebanya 236 butir. Sedangkan Toni memiliki kelereng 24 butir lebih banyak. Berapakah kelereng milik Toni?',
      jawaban: '260',
    ),
    EvaluasiM(
      noans: 14,
      soal:
          'Disekolah terdapat 321 batang kapur. Membeli lagi 139 batang. Berapa semua kapur di sekolah?',
      jawaban: '460',
    ),
    EvaluasiM(
      noans: 15,
      soal:
          'Ibu membeli telur sebanyak 125 butir. Dijalan telur tersebut pecah sebanyak 19 butir. Berapa sisa telur ibu?',
      jawaban: '105',
    ),
    EvaluasiM(
      noans: 16,
      soal:
          'Ardi memiliki ayam sebanyak 412 ekor. Ayam tersebut djual sebanyak 223 ekor. Berapa ayam milik Ardi sekarang?',
      jawaban: '189',
    ),
    EvaluasiM(
      noans: 17,
      soal:
          'Ani memiliki jeruk 126 buah. Jeruk tersebut diberikan kepada Rani 17 buah. Ternyata ibu membelikan jeruk 55 buah untuk Ani. Berapa jeruk Ani sekarang?',
      jawaban: '164',
    ),
    EvaluasiM(
      noans: 18,
      soal:
          'Pak Anwar memiliki ayam sebanyak 432 ekor. Ayam tersebut di jual sebanyak 46 ekor. Tenyata induk ayam menetaskan ayam ayam sebanyak 28 ekor. Berapa ekor ayam pak Anwar sekarang?',
      jawaban: '414',
    ),
    EvaluasiM(
      noans: 19,
      soal:
          'Siti memiliki permen sebanyak 45 buah, kemudian ayah membelikan lagi sebanyak 167 buah. Setelah itu Siti memberikan permennya kepada Ari 27 buah. Berapa buah sisa permen Siti?',
      jawaban: '185',
    ),
    EvaluasiM(
      noans: 20,
      soal:
          'Meja disebuah sekolah sebanyak 125 buah. Mendapatkan bantuan meja sebanyak 56 buah. Ternyata terdapat meja rusaj sebanya 23 buah. Berapa meja disekolah yang tidak rusak?',
      jawaban: '158',
    ),
  ];
  List<EvaluasiM> get soalEvaluasiM {
    return [..._evaluasiM];
  }
}
