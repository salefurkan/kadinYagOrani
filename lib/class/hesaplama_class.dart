import 'dart:math';

class HesaplamaClass {
  HesaplamaClass({this.boy, this.boyun, this.bel, this.kalca});

  final int boy;
  final int boyun;
  final int bel;
  final int kalca;
  double _yagOrani;

  double log10(num x) => log(x) / ln10;
  String hesapla() {
    _yagOrani =
        (((163.205 * log10(bel + kalca - boyun)) - (97.684 * log10(boy))) -
            104.912);
    return _yagOrani.toStringAsFixed(2);
  }
}
