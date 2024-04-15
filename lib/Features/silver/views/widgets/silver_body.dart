import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:souq/Features/home/presentation/view/widgets/categoriesRow.dart';
import 'package:souq/Features/home/presentation/view/widgets/salesorbuy_row.dart';
import 'package:souq/Features/silver/views/widgets/columnPriceSilver.dart';
import 'package:souq/core/utils/styles.dart';

class SilverBody extends StatelessWidget {
  const SilverBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
     const   SizedBox(
          height: 40,
        ),
        CategoriesRow(
          ontapgold: () {
            GoRouter.of(context).pop();
          },
        ),
      const  Text('سعر الفضة اليوم', style: Styles.se3rGorS),
     const   Saleorbuy(),
    const    SizedBox(
          height: 20,
        ),
     const   ColumnPricesSilver()
      ],
    );
  }
}
