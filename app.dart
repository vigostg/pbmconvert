import 'jagoan.dart';
import 'jubah.dart';
import 'senjata.dart';

void main() {
  // Membuat nama "Pitung"
  Jagoan pitung = Jagoan("Pitung");

  // Membuat Jubah  "Jubah Silat Putih", kekuatannya 7, dan kesehatannya 50
  Jubah jubahSilatPutih = Jubah("Jubah Silat Putih", 7, 50);

  // Membuat Senjata  "Golok" sama kekuatannya 20
  Senjata golok = Senjata("Golok", 20);

  // Membuat Jubah sama Senjata buat si "Pitung"
  pitung.setJubah(jubahSilatPutih);
  pitung.setSenjata(golok);

  // Membuat seperti diatas dengan nama "Jaka Sembung"
  Jagoan jakaSembung = Jagoan("Jaka Sembung");
  Jubah jubahSilatHitam = Jubah("Jubah Silat Hitam", 10, 50);
  Senjata toya = Senjata("Toya", 25);

  jakaSembung.setJubah(jubahSilatHitam);
  jakaSembung.setSenjata(toya);

  // Menampilkan informasi dari kedua Jagoan
  pitung.info();
  jakaSembung.info();

  // Membuat perintah menyerang
  jakaSembung.menyerang(pitung);
  jakaSembung.menyerang(pitung);
  jakaSembung.menyerang(pitung);
  jakaSembung.menyerang(pitung);

  pitung.menyerang(jakaSembung);
  pitung.menyerang(jakaSembung);
  pitung.menyerang(jakaSembung);
  pitung.menyerang(jakaSembung);

  // Menampilkan hasil pertempuran
  print('${pitung.getNama()}: ${pitung.getNilaiKesehatan()}');
  print('${jakaSembung.getNama()}: ${jakaSembung.getNilaiKesehatan()}');

  if (pitung.getStatus() && !jakaSembung.getStatus()) {
    print('${pitung.getNama()} menang bradsii!!!');
  } else if (!pitung.getStatus() && jakaSembung.getStatus()) {
    print('${jakaSembung.getNama()} menang brads!!');
  } else {
    if (pitung.getNilaiKesehatan() > jakaSembung.getNilaiKesehatan()) {
      print('${pitung.getNama()} menang brads!!');
    } else if (pitung.getNilaiKesehatan() < jakaSembung.getNilaiKesehatan()) {
      print('${jakaSembung.getNama()} menang brads!!');
    } else {
      print('Kedua jagoan seri, brads!');
    }
  }
}
