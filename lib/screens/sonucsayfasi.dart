import 'package:flutter/material.dart';
import 'package:vki_hesaplama/screens/hesaplamasayfasi.dart';
import 'package:vki_hesaplama/widgets/hesap_card.dart';
import 'package:vki_hesaplama/widgets/hesapla_button.dart';

class SonucSayfasi extends StatelessWidget {
  const SonucSayfasi({this.sonuc});
  final String sonuc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Sonuç',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: HesapCard(
              renk: Color(0xFFa29bfe),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    sonuc,
                    style: TextStyle(
                      fontSize: 85.0,
                      color: Colors.brown,
                    ),
                  ),
                  Text(
                    'Yaşam için esansiyel	%10-13 \nSporcu	%14-20 \nFit %21-24 \nOrtalama %25-31 \nÇok yağlı veya obez	%32+',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.brown[800],
                    ),
                  ),
                ],
              ),
            ),
          ),
          HesaplaButton(
            baslik: 'Yeni Hesap',
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return HesaplamaSayfasi();
              }));
            },
          ),
        ],
      ),
    );
  }
}
