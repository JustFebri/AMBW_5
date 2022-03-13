import 'pegawai.dart';

class Staff extends Pegawai {
  int jatahcuti = 12;
  int kehadiran = 0;

  Staff(String nama, String nrp, int gajidasar, int tunjangan)
      : super(nama, nrp, gajidasar, tunjangan);

  //untuk mengurangi jatah cuti sebanyak n
  set kurangijatahcuti(int n) {
    if (n <= jatahcuti) {
      jatahcuti -= n;
    } else {
      print("Jatah cuti tidak cukup");
    }
  }

  //untuk melakukan set berapa kali sudah hadir
  set setkehadiran(int n) {
    kehadiran += n;
  }

  //untuk mendapatkan berapa gaji total
  int get getgaji {
    int total = 0;
    total = (kehadiran * tunjangan) + gajidasar;
    return total;
  }
}
