import 'allData.dart';

class Pegawai extends allData {
  int gajidasar = 0;
  int tunjangan = 0;

  Pegawai(String nama, String nrp, this.gajidasar, this.tunjangan)
      : super(nama, nrp);
}
