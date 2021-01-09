import 'package:flutter/material.dart';
import 'package:vki_hesaplama/class/hesaplama_class.dart';
import 'package:vki_hesaplama/screens/sonucsayfasi.dart';

import 'package:vki_hesaplama/widgets/hesap_card.dart';

class HesaplamaSayfasi extends StatefulWidget {
  @override
  _HesaplamaSayfasiState createState() => _HesaplamaSayfasiState();
}

class _HesaplamaSayfasiState extends State<HesaplamaSayfasi> {
  int boy = 165;
  int boyuncevresi = 30;
  int belcevresi = 65;
  int kalcacevresi = 95;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Yağ Oranı Hesaplama'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: HesapCard(
              renk: Color(0xFFa29bfe),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'BOY',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        boy.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontSize: 30.0,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      thumbColor: Color(0xFF8e44ad),
                      overlayColor: Color(0x298e44ad),
                      activeTrackColor: Color(0xFFd63031),
                      inactiveTrackColor: Color(0xFFff7739),
                    ),
                    child: Slider(
                      value: boy.toDouble(),
                      min: 50,
                      max: 220,
                      onChanged: (double newCount) {
                        setState(() {
                          boy = newCount.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: HesapCard(
              renk: Color(0xFFa29bfe),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Boyun Çevresi(Adem Elmasının Etrafından)',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        boyuncevresi.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontSize: 30.0,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      thumbColor: Color(0xFF8e44ad),
                      overlayColor: Color(0x298e44ad),
                      activeTrackColor: Color(0xFFd63031),
                      inactiveTrackColor: Color(0xFFff7739),
                    ),
                    child: Slider(
                      value: boyuncevresi.toDouble(),
                      min: 20,
                      max: 50,
                      onChanged: (double newCount) {
                        setState(() {
                          boyuncevresi = newCount.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: HesapCard(
              renk: Color(0xFFa29bfe),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Bel Çevresi(Göbek Deliğinin Üzerinden)',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        belcevresi.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontSize: 30.0,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      thumbColor: Color(0xFF8e44ad),
                      overlayColor: Color(0x298e44ad),
                      activeTrackColor: Color(0xFFd63031),
                      inactiveTrackColor: Color(0xFFff7739),
                    ),
                    child: Slider(
                      value: belcevresi.toDouble(),
                      min: 50,
                      max: 150,
                      onChanged: (double newCount) {
                        setState(() {
                          belcevresi = newCount.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: HesapCard(
              renk: Color(0xFFa29bfe),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Kalça Çevresi(En Geniş)',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        kalcacevresi.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontSize: 30.0,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      thumbColor: Color(0xFF8e44ad),
                      overlayColor: Color(0x298e44ad),
                      activeTrackColor: Color(0xFFd63031),
                      inactiveTrackColor: Color(0xFFff7739),
                    ),
                    child: Slider(
                      value: kalcacevresi.toDouble(),
                      min: 50,
                      max: 150,
                      onChanged: (double newCount) {
                        setState(() {
                          kalcacevresi = newCount.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0.1,
        backgroundColor: Colors.transparent,
        child: Icon(
          Icons.send,
          color: Color(0xFFd63031),
          size: 35.0,
        ),
        onPressed: () {
          HesaplamaClass hesapClass = HesaplamaClass(
              boy: boy,
              boyun: boyuncevresi,
              bel: belcevresi,
              kalca: kalcacevresi);

          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return SonucSayfasi(sonuc: hesapClass.hesapla());
          }));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
