import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:souq/Features/home/presentation/manager/cubit/prices_cubit.dart';
import 'package:souq/Features/home/presentation/view/widgets/price_container.dart';
class ColumnOfPrices extends StatelessWidget {
  const ColumnOfPrices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<PricesCubit>(context).fetchPrice();
    return BlocBuilder<PricesCubit, PricesState>(
      builder: (context, state) {
        if (state is Pricesloading) {
          return Container();
        } else if (state is Pricessuceess) {
          int k24 = state.k24;
          int k21 = state.k21;
          int k18 = state.k18;
          int k14 = state.k14;

          return Column(
            children: [
              PriceContainer(
                buy: k24,
                karat: 'عيار 24',
                sale: k24 - 60,
              ),
              const SizedBox(
                height: 10,
              ),
              PriceContainer(
                buy: k21,
                karat: 'عيار 21',
                sale: k21 - 50,
              ),
              const SizedBox(
                height: 10,
              ),
              PriceContainer(
                buy: k18,
                karat: 'عيار 18',
                sale: k18 - 40,
              ),
              const SizedBox(
                height: 10,
              ),
              PriceContainer(
                buy: k14,
                karat: 'عيار 14',
                sale: k14 - 30,
              ),
            ],
          );
        }
        return Container();
      },
    );
  }
}
