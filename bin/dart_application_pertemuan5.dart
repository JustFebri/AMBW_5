import 'dart:io';
import 'Dosen.dart';
import 'Mahasiswa.dart';
import 'Staff.dart';

void main(List<String> arguments) {
  stdout.write("Gaji Dasar: ");
  String? a = stdin.readLineSync();
  int gajidasar = int.parse(a!);

  stdout.write("Tunjangan: ");
  String? b = stdin.readLineSync();
  int tunjangan = int.parse(b!);

  print("\nMAHASISWA");
  var mhs1 = Mahasiswa("Andi", "C14190045", sks: 23, cuti: false, ips: 3.23);
  print(
      "Nama: ${mhs1.nama} - NRP: ${mhs1.nrp} - SKS: ${mhs1.sks} - Status Cuti: ${mhs1.cuti} - IPS: ${mhs1.ips} - IPK: ${mhs1.ipk}");

  //set SKS
  mhs1.setsks = 34;
  //set Status
  mhs1.setcuti = true;
  //get SKS
  print("SKS: ${mhs1.getsks}");
  //set IPS
  mhs1.setips = 3.75;
  //get IPK
  print("IPK: ${mhs1.getipk}");

  print(
      "Hasil akhir = Nama: ${mhs1.nama} - NRP: ${mhs1.nrp} - SKS: ${mhs1.sks} - Status Cuti: ${mhs1.cuti} - IPS: ${mhs1.ips} - IPK: ${mhs1.ipk}");

  print("\nDosen");
  var d1 = Dosen("Steven", "D123232212", gajidasar, tunjangan,
      jumsks: 23, jenisDosen: "Tetap");
  print(
      "Nama: ${d1.nama} - NRP: ${d1.nrp} - Gaji Dasar: ${d1.gajidasar} - Tunjangan: ${d1.tunjangan} - Jumlah SKS: ${d1.jumsks} - Jenis Dosen: ${d1.jenisDosen}");
  //getsks
  print("Jumlah SKS yang diampu: ${d1.getsks}");
  //getpenghasilan
  print("Penghasilan: ${d1.getgaji}");

  print("\nStaff");
  var s1 = Staff("Bob", "S172839942", gajidasar, tunjangan);

  print(
      "Nama: ${s1.nama} - NRP: ${s1.nrp} - Gaji Dasar: ${s1.gajidasar} - Tunjangan: ${s1.tunjangan} - Jatah Cuti: ${s1.jatahcuti} - Kehadiran: ${s1.kehadiran}");

  //setjatahcuti nantinya akan mengurangi dari jumlah jatah cuti yang ada sebanyak yang diajukan cuti berapa hari
  s1.kurangijatahcuti = 5;
  //absensi
  s1.setkehadiran = 4;
  //get gaji
  print("Gaji Total: ${s1.getgaji}");

  print(
      "Nama: ${s1.nama} - NRP: ${s1.nrp} - Gaji Dasar: ${s1.gajidasar} - Tunjangan: ${s1.tunjangan} - Jatah Cuti: ${s1.jatahcuti} - Kehadiran: ${s1.kehadiran}");
}