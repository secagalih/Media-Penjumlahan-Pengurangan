import 'package:belajar_berhitung/custom/modelSoal.dart';
import 'package:flutter/material.dart';

class LatihanPengurEasy with ChangeNotifier {
  List<Latihan> _soalPengurEasyM = [
    Latihan(
      noans: 1,
      n1: '542',
      n2: '241',
      jawaban: '311',
    ),
    Latihan(
      noans: 2,
      n1: '242',
      n2: '38',
      jawaban: '204',
    ),
    Latihan(
      noans: 3,
      n1: '425',
      n2: '284',
      jawaban: '141',
    ),
    Latihan(
      noans: 4,
      n1: '536',
      n2: '282',
      jawaban: '254',
    ),
    Latihan(
      noans: 5,
      n1: '825',
      n2: '375',
      jawaban: '450',
    ),
    Latihan(
      noans: 6,
      n1: '951',
      n2: '254',
      jawaban: '697',
    ),
    Latihan(
      noans: 7,
      n1: '275',
      n2: '39',
      jawaban: '236',
    ),
    Latihan(
      noans: 8,
      n1: '512',
      n2: '256',
      jawaban: '256',
    ),
    Latihan(
      noans: 9,
      n1: '432',
      n2: '321',
      jawaban: '111',
    ),
    Latihan(
      noans: 10,
      n1: '867',
      n2: '478',
      jawaban: '389',
    ),
  ];
  List<Latihan> get soalPenguranganEasyM {
    return [..._soalPengurEasyM];
  }
}

class LatihanPengurHard with ChangeNotifier {
  List<Latihan> _soalPengurHard = [
    Latihan(
      noans: 1,
      pertanyaan:
          'Pak Edy memiliki kelereng sebanyak 267 buah. Kelereng tersebut diberikan kepada siswa sebanyak 76 buah. Berapa sisa kelereng pak Edy?',
      jawaban: '191',
    ),
    Latihan(
      noans: 2,
      pertanyaan:
          'Kapur tulis di almari ada 116 batang. Kapur tersebut sudah dipakai sebanyak 25 batang. Berapa sisa kapur yang belum dipakai?',
      jawaban: '91',
    ),
    Latihan(
      noans: 3,
      pertanyaan:
          'Di SD Negeri Tukharjo ada 125 siswa laki-laki dan 117 siswa perempuan. Berapa selisih siswa laki-laki dan perempuan?',
      jawaban: '10',
    ),
    Latihan(
      noans: 4,
      pertanyaan:
          'Udin mempunyai 206 butir kelereng. Kelereng Edo lebih sedikit 55 butir. Berapa banyak kelereng Edo?',
      jawaban: '201',
    ),
    Latihan(
      noans: 5,
      pertanyaan:
          'Ibu membeli buah jeruk sebanyak 100 buah. Ternyata sampai dirumah ada 21 buah jeruk yang busuk. Berapakah jumlah jeruk ibu yang tidak busuk?',
      jawaban: '79',
    ),
    Latihan(
      noans: 6,
      pertanyaan:
          'Siti membeli telur sebanyak 210 butir. Dijalan ternyata telur itu pecah 21 butir. Berapa sisa telur yang masih baik?',
      jawaban: '189',
    ),
    Latihan(
      noans: 7,
      pertanyaan:
          'Pak Sadi membeli benih ikan lele sebanyak 321 ekor. Kemudian pak Rendi membeli 25 ekor lebih sedikit. Berapa benih ikan lele pak Rendi?',
      jawaban: '296',
    ),
    Latihan(
      noans: 8,
      pertanyaan:
          'Meja di sekolah berjumlah 120 buah. Ternyata ada 19 buah meja yang rusak. Berapakah meja yang tidak rusak?',
      jawaban: '101',
    ),
    Latihan(
      noans: 9,
      pertanyaan:
          'Ayam Sani berjumlah 132 ekor. Ayam tersebut dijual sebanya 23 ekor. Berapa sisa ayam Sani?',
      jawaban: '109',
    ),
    Latihan(
      noans: 10,
      pertanyaan:
          'Pak guru membawa permen 145 buah. Permen tersebut diberikan kepada muridnya sebanyak 51 buah. Berapa sisa permen pak guru',
      jawaban: '94',
    ),
  ];
  List<Latihan> get soalPenguranganHard {
    return [..._soalPengurHard];
  }
}
