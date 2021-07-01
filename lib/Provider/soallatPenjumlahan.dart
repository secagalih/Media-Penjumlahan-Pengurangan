import 'package:belajar_berhitung/custom/modelSoal.dart';
import 'package:flutter/widgets.dart';

class LatihanPejumEasy with ChangeNotifier {
  List<Latihan> _soalPenjumEasyMultipleCois = [
    Latihan(
      noans: 1,
      n1: '125',
      n2: '117',
      jawaban: '242',
    ),
    Latihan(
      noans: 2,
      n1: '267',
      n2: '129',
      jawaban: '396',
    ),
    Latihan(
      noans: 3,
      n1: '185',
      n2: '234',
      jawaban: '419',
    ),
    Latihan(
      noans: 4,
      n1: '243',
      n2: '428',
      jawaban: '671',
    ),
    Latihan(
      noans: 5,
      n1: '515',
      n2: '349',
      jawaban: '864',
    ),
    Latihan(
      noans: 6,
      n1: '475',
      n2: '254',
      jawaban: '729',
    ),
    Latihan(
      noans: 7,
      n1: '636',
      n2: '182',
      jawaban: '818',
    ),
    Latihan(
      noans: 8,
      n1: '283',
      n2: '285',
      jawaban: '568',
    ),
    Latihan(
      noans: 9,
      n1: '325',
      n2: '285',
      jawaban: '610',
    ),
    Latihan(
      noans: 10,
      n1: '345',
      n2: '123',
      jawaban: '468',
    ),
  ];

  List<Latihan> get soalPenjumlahanEasyM {
    return [..._soalPenjumEasyMultipleCois];
  }
}

class LatihanPejumHard with ChangeNotifier {
  List<Latihan> _soalPenjumHard = [
    Latihan(
      noans: 1,
      pertanyaan:
          'Upacara bendera hari Senin diikuti oleh siswa dan guru. Terdapat 239 siswa dan 15 guru. Berapa peserta upacara seluruhnya?',
      jawaban: '254',
    ),
    Latihan(
      noans: 2,
      pertanyaan:
          'Di ruang pojok baca terdapat 181 buku pelajaran dan 126 buku cerita. Berapa jumlah buku seluruhnya?',
      jawaban: '307',
    ),
    Latihan(
      noans: 3,
      pertanyaan:
          'Ani memiliki 2 box permen. Setiap box berisi 175 permen. Berapa jumlah permen seluruhnya?',
      jawaban: '350',
    ),
    Latihan(
      noans: 4,
      pertanyaan:
          'Didalam lemari kelas terdapat 359 lembar kertas HVS. Selain itu terdapat kertas folio dengan jumlah 60 lembar lebih banyak. Berapakah banyak kertas folio di dalam lemari?',
      jawaban: '419',
    ),
    Latihan(
      noans: 5,
      pertanyaan:
          'Banyak kapur berwarna ada 117 batang. Kapur putih lebih banyak 43 batang. Berapa jumlah kapur seluruhnya?',
      jawaban: '277',
    ),
    Latihan(
      noans: 6,
      pertanyaan:
          'Tono memiliki kelereng 368 buah. Andi memiliki kelereng 148 lebih banyak dari Tono. Berapakah jumlah kelereng Andi?',
      jawaban: '516',
    ),
    Latihan(
      noans: 7,
      pertanyaan:
          'Ardi memiliki telur ayam sebanyak 569 buah. Ibu membeli lagi telur sebanyak 135 buah. Berapa jumlah telur semuanya?',
      jawaban: '704',
    ),
    Latihan(
      noans: 8,
      pertanyaan:
          'Pak Sardi memanen ikan lele sebanyak 758 ekor. Sedangkan pak Yudi memanen ikan lele 167 lebih banyalk. Berapakah jumlah ikan lele pak Yudi?',
      jawaban: '925',
    ),
    Latihan(
      noans: 9,
      pertanyaan:
          'Santo memiliki 2 buah kandang ayam. Setiap kandang berisikan ayam sebanyak 377 ekor ayam. Berapa jumlah ayam Santo seluruhnya?',
      jawaban: '754',
    ),
    Latihan(
      noans: 10,
      pertanyaan:
          'Sebuah buku pelajaran memiliki halaman 187. Sedangkan buku cerita memiliki halaman 54 lebih banyak. Berapakah jumlah halaman buku cerita?',
      jawaban: '241',
    ),
  ];
  List<Latihan> get soalPenjumlahanHard {
    return [..._soalPenjumHard];
  }
}
