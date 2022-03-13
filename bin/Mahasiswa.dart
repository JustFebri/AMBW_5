import 'dart:io';
import 'allData.dart';

class Mahasiswa extends allData {
  bool cuti = false;
  int sks = 2;
  double ips = 0;
  double ipk = 0;

  Mahasiswa(String nama, String nrp,
      {this.sks = 2, this.cuti = false, this.ips = 0})
      : super(nama, nrp) {
    ipk = ips;
  }

  //untuk melakukan set sks
  set setsks(int n) {
    if (n < 2) {
      print("Minimal SKS = 2");
    } else {
      sks = n;
    }
  }

  //untuk menset status cuti
  set setcuti(bool n) {
    if (n == false) {
      cuti = false;
    } else {
      cuti = true;
    }
  }

  //untuk mendapatkan jumlah sks
  int get getsks {
    return sks;
  }

  //untuk melakukan set ips, sedangkan untuk ipk disasuaikan dengan ips
  set setips(double temp) {
    ips = temp;
    ipk = ips;
  }

  //untuk mendapatkan ipk yang diset
  double get getipk {
    return ipk;
  }
}
