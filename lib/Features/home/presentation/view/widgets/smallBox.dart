import 'package:flutter/material.dart';
import 'package:souq/core/utils/styles.dart';

class SmallBox extends StatelessWidget {
  const SmallBox({super.key, required this.se3r, required this.esm});
  final String se3r;
  final String esm;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50))),
      height: 45,
      width: MediaQuery.of(context).size.width*.4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        textDirection: TextDirection.rtl,
        children: [
          Text(esm,style: Styles.smallboxx,
               ),
               
          Text(
            '$se3r',
            style: Styles.intprice
          )
        ],
      ),
    );
  }
}
