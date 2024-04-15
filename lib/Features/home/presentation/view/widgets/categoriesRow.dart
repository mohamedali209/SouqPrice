import 'package:flutter/material.dart';
import 'package:souq/Features/home/presentation/view/widgets/categories.dart';

class CategoriesRow extends StatelessWidget {
  const CategoriesRow({
    super.key,
    this.ontap,
    this.ontapgold,
  });
  final void Function()? ontap;
  final void Function()? ontapgold;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap:ontapgold ,
          child:const Smallcontaincategory(
             
              bottomleft: 13,
              bottomright: 0,
              topleft: 13,
              topright: 0,
              color: Colors.amber,
              text: 'ذهب'),
        ),
        GestureDetector(
          onTap: ontap,
          child:const Smallcontaincategory(
            
              bottomleft: 0,
              bottomright: 13,
              topleft: 0,
              topright: 13,
              color: Colors.grey,
              text: 'فضة'),
        )
      ],
    );
  }
}
