import 'package:flutter/material.dart';

class HesaplaButton extends StatelessWidget {
  const HesaplaButton({@required this.baslik, @required this.onTap});
  final String baslik;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.deepOrangeAccent,
            borderRadius: BorderRadius.circular(15.0)),
        height: 65.0,
        child: Center(
          child: Text(
            baslik,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      ),
    );
  }
}
