import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
part 'prices_state.dart';

class PricesCubit extends Cubit<PricesState> {
  PricesCubit() : super(PricesInitial());
  final String baseUrl = 'https://api.gold-api.com/price/XAU';
  final double dollarPrice = 49.73;
  Future<dynamic> fetchPrice() async {
    try {
      emit(Pricesloading());
      http.Response response = await http.get(Uri.parse(baseUrl));

      Map<String, dynamic> data = jsonDecode(response.body);
      double priceStock = data['price'];
      // ignore: unnecessary_null_comparison
      int k24 = priceStock != null ? (priceStock * dollarPrice ~/ 31.1) : 0;
      int k21 = (k24 * 21 ~/ 24).toInt();
      int k18 = (k21 * 6 ~/ 7).toInt();
      int k14 = (k18 * 14 ~/ 18).toInt();
      int onsa = (priceStock * dollarPrice).toInt();
      int gneh = k21 * 8;

      emit(Pricessuceess(priceStock, k24, k21, k18, k14, onsa,gneh));
    } catch (e) {
      emit(Pricesfailed(e.toString()));
    }
  }
}
