import 'package:flutter/material.dart';
import 'package:souq/core/utils/styles.dart';

class PriceContainer extends StatelessWidget {
  const PriceContainer({super.key, required this.karat, required this.buy, required this.sale});
  final String karat;
  final int buy;
  final int sale;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(13))),
      child: Row(
           textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: 10,
          ),
          Text(
           
           karat,style: Styles.karat,
           
          ),
          SizedBox(width: MediaQuery.of(context).size.width*.08,),
          Text(
            '$sale',
            style: Styles.intprice,
          ),
           SizedBox(width: MediaQuery.of(context).size.width*.4,),
          Text(
            '$buy',
            style:Styles.intprice
          )
        ],
      ),
    );
  }
}
