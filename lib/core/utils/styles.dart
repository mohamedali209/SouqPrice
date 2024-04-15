import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const ahlanbek = ArabicTextStyle(
      arabicFont: ArabicFont.arefRuqaa, color: Colors.amber, fontSize: 50);
  static const thtahln = ArabicTextStyle(
      arabicFont: ArabicFont.cairo,
      color: Colors.white,
      fontWeight: FontWeight.bold);
  static const titlebar = ArabicTextStyle(
      arabicFont: ArabicFont.arefRuqaa, fontSize: 40, color: Colors.white);

  static const by = TextStyle(
      fontFamily: 'Aref Ruqaa',
      color: Colors.white,
      fontWeight: FontWeight.bold);
  static const ma = TextStyle(
      fontFamily: 'Aref Ruqaa',
      color: Colors.amber,
      fontSize: 25,
      fontWeight: FontWeight.w500);
  static const se3rGorS = ArabicTextStyle(
      arabicFont: ArabicFont.arefRuqaa,
      color: Colors.white,
      fontSize: 45,
      fontWeight: FontWeight.bold);
  static const saleorbuy = ArabicTextStyle(
      arabicFont: ArabicFont.arefRuqaa,
      color: Colors.white,
      fontSize: 45,
      fontWeight: FontWeight.bold);
  static const intprice =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black);

  static const karat = ArabicTextStyle(
      arabicFont: ArabicFont.cairo,
      fontWeight: FontWeight.bold,
      fontSize: 15,
      color: Colors.black);

  static const smallboxx = ArabicTextStyle(
    arabicFont: ArabicFont.cairo,
    fontWeight: FontWeight.bold,
    color: Colors.black
  );
}
