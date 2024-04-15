import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';

class Smallcontaincategory extends StatelessWidget {
 const Smallcontaincategory(
      {super.key, required this.bottomleft,
      required this.bottomright,
      required this.topleft,
      required this.topright,
      required this.color,
      required this.text,
      });
  final Color color;
 final String text;

 final double? bottomleft;
 final double? topleft;
 final double? bottomright;
 final double? topright;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height*.055,
        width: MediaQuery.of(context).size.width*.4,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(bottomleft!),
                topLeft: Radius.circular(topleft!),
                bottomRight: Radius.circular(bottomright!),
                topRight: Radius.circular(topright!))),
        child: Padding(
          padding: const EdgeInsets.only(top: 5, left: 65),
          child: Text(
            text,
            style: const ArabicTextStyle(
                arabicFont: ArabicFont.arefRuqaa,
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}

