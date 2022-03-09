import 'person.dart';

class mahasiswa extends person {
  String? noInduk;
  double sks = 0;
  String status = "Aktif";
  double ipk = 0;
  double ips = 0;

  mahasiswa(String? nama, int umur) : super(nama, umur);

  set _sks(double temp) {}
  set _status(String temp) {}
  set _ipk(double temp) {}
  set _ips(double temp) {}

  double get _sks {
    return sks;
  }

  String get _status {
    return status;
  }

  double get _ipk {
    return ipk;
  }

  double get _ips {
    return ips;
  }
}
