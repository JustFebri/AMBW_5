import 'pegawai.dart';

class Dosen extends Pegawai {
  int jumsks = 0;
  int gajitambahan = 0;
  String? jenisDosen;

  Dosen(String nama, String nrp, int gajidasar, int tunjangan,
      {this.jumsks = 0, String jenisDosen = "Tetap"})
      : super(nama, nrp, gajidasar, tunjangan) {
    gajitambahan = jumsks * 40000;
    if (jenisDosen == "Tetap" || jenisDosen == "LB" || jenisDosen == "Tamu") {
      this.jenisDosen = jenisDosen;
    } else {
      print("Jenis dosen tidak terdaftar");
    }
  }

  //untuk menghitung gaji berdasarkan jenisdosen
  int get getgaji {
    int total = 0;
    if (jenisDosen == "LB") {
      total = gajitambahan;
    } else if (jenisDosen == "Tamu") {
      total = gajitambahan + tunjangan;
    } else if (jenisDosen == "Tetap") {
      total = gajidasar + gajitambahan + tunjangan;
    }
    return total;
  }

  //untuk mendapatkan jumlah sks yang diampu
  int get getsks {
    return jumsks;
  }
}
