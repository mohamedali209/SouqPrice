import 'package:flutter/material.dart';
import 'package:souq/core/utils/styles.dart';

class Saleorbuy extends StatelessWidget {
  const Saleorbuy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
    
      children: [
        SizedBox(width: MediaQuery.of(context).size.width*.15,),
      const  Text('بيع',style: Styles.saleorbuy,),
      SizedBox(width: MediaQuery.of(context).size.width*.35,),
        const   Text('شراء',style: Styles.saleorbuy,), ],);
  }
}
