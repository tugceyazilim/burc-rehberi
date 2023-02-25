import 'package:burclar/burc_item.dart';
import 'package:burclar/constractor/burc.dart';
import 'package:burclar/data/degerler.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  List<Burc> tumburclar = [];
//kurucu method : sınıf adıyla birebir aynı ismi
// taşırlar geriye hiçbir şey return etmez.
  BurcListesi() {
    tumburclar = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burç Listeleri'),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return BurcItem(listelenenBurc: tumburclar[index]);
          },
          itemCount: tumburclar.length,
        ),
      ),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> t1 = [];
    for (int i = 0; i < 11; i++) {
      var burcAdi = Degerler.burcAdlari[i];
      var burcTarih = Degerler.burcTarihleri[i];
      var burcDetay = Degerler.burcGenelOzellikleri[i];
      var burcKucukResim = '${Degerler.burcAdlari[i].toLowerCase()}${i + 1}.jpg';
      var burcBuyukResim = '${Degerler.burcAdlari[i].toLowerCase()}_buyuk${i + 1}.jpg';
      Burc eklenecekBurc = Burc(burcAdi, burcTarih, burcDetay, burcKucukResim, burcBuyukResim);
      t1.add(eklenecekBurc);
    }
    return t1;
  }
}
