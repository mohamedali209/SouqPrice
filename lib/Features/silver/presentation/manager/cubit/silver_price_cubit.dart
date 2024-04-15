import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

part 'silver_price_state.dart';

class SilverPriceCubit extends Cubit<SilverPriceState> {
  SilverPriceCubit() : super(SilverPriceInitial());
  final String baseUrl = 'https://api.gold-api.com/price/XAG';
  final double dollarPrice = 49.73;
  Future<dynamic> fetchPrice() async {
    try {
      emit(Silverloading());
      http.Response response = await http.get(Uri.parse(baseUrl));

      Map<String, dynamic> data = jsonDecode(response.body);
      double priceStock = data['price'];
      // ignore: unnecessary_null_comparison
      int k999 = priceStock != null ? (priceStock * dollarPrice ~/ 31.1) : 0;
      int k925 = (k999 * 925 ~/ 999).toInt();
      int k800 = (k925 * 800 ~/ 925).toInt();

      emit(Silversuccess(priceStock, k999, k925, k800));
    } catch (e) {
      emit(Silverfailed(e.toString()));
    }
  }
}
