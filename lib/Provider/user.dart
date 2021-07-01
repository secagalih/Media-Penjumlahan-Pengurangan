import 'package:flutter/widgets.dart';

class Pemakai {
  final String nama;
  final String sekolah;
  final String nomorsek;

  Pemakai({
    this.nama,
    this.sekolah,
    this.nomorsek,
  });
}

class Nilai {
  final int nomor;
  final int nilai;

  Nilai({this.nilai, this.nomor});
}

class Pengguna with ChangeNotifier {
  final List<Pemakai> _user = [];

  List<Pemakai> get dataPengguna {
    return [..._user];
  }

  void addPengguna(
    String nama,
    String sekolah,
    String nomor,
  ) {
    _user.insert(
        0,
        Pemakai(
          nama: nama,
          nomorsek: nomor,
          sekolah: sekolah,
        ));
    notifyListeners();
  }
}
