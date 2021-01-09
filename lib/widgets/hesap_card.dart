import 'package:flutter/material.dart';

class HesapCard extends StatelessWidget {
  const HesapCard({@required this.renk, this.cardChild});
  final Color renk;

  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: renk, borderRadius: BorderRadius.circular(10.0)),
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: cardChild,
    );
  }
}
