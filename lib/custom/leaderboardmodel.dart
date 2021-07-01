class LeaderBoard {
  String nama;
  String sekolah;
  String nomor;
  String nilai;

  LeaderBoard({
    this.nama,
    this.nilai,
    this.nomor,
    this.sekolah,
  });

  LeaderBoard.fromMap(Map map)
      : this.nama = map['nama'],
        this.sekolah = map['sekolah'],
        this.nomor = map['nomor'],
        this.nilai = map['nilai'];

  Map toMap() {
    return {
      'nama': this.nama,
      'sekolah': this.sekolah,
      'nomor': this.nomor,
      'nilai': this.nilai,
    };
  }
}
