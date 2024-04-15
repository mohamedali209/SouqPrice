import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:souq/Features/home/presentation/view/widgets/ColumnPrices.dart';
import 'package:souq/Features/home/presentation/view/widgets/Onsa_gneh_widget.dart';
import 'package:souq/Features/home/presentation/view/widgets/categoriesRow.dart';
import 'package:souq/Features/home/presentation/view/widgets/elshasha.dart';
import 'package:souq/Features/home/presentation/view/widgets/salesorbuy_row.dart';
import 'package:souq/core/utils/app_router.dart';
import 'package:souq/core/utils/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 40,
        ),
        CategoriesRow(
          ontap: () => GoRouter.of(context).push(AppRouter.kSilverView),
        ),
        const Text('سعر الذهب اليوم', style: Styles.se3rGorS),
        const Saleorbuy(),
        const SizedBox(
          height: 20,
        ),
        const ColumnOfPrices(),
        const SizedBox(
          height: 20,
        ),
        const OnsaGneh(),
        const SizedBox(
          height: 20,
        ),
        const Elshasha(),
      ],
    );
  }
}
