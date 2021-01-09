import 'package:flutter/material.dart';
import 'package:vki_hesaplama/screens/hesaplamasayfasi.dart';

void main() {
  runApp(VKIHesapla());
}

class VKIHesapla extends StatelessWidget {
  const VKIHesapla({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themeChoose = new ThemeData(
      primarySwatch: Colors.deepPurple,
      accentColor: Color(0xFF9b69b7),
      scaffoldBackgroundColor: Color(0xFF6a5A999),
    );

    return MaterialApp(
      theme: themeChoose,
      home: HesaplamaSayfasi(),
    );
  }
}
