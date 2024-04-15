import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:souq/Features/home/presentation/view/widgets/price_container.dart';
import 'package:souq/Features/silver/presentation/manager/cubit/silver_price_cubit.dart';
class ColumnPricesSilver extends StatelessWidget {
  const ColumnPricesSilver({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<SilverPriceCubit>(context).fetchPrice();
    return BlocBuilder<SilverPriceCubit, SilverPriceState>(
      builder: (context, state) {
        if (state is Silverloading) {
          return const CircularProgressIndicator(
            color: Colors.grey,
          );
        } else if (state is Silversuccess) {
          int k999 = state.k999;
          int k925 = state.k925;
          int k800 = state.k800;
          return Column(
            children: [
              PriceContainer(
                buy: k999,
                karat: 'عيار 999',
                sale: k999 - 2,
              ),
              const SizedBox(
                height: 10,
              ),
              PriceContainer(
                buy: k925,
                karat: 'عيار 925',
                sale: k925 - 2,
              ),
              const SizedBox(
                height: 10,
              ),
              PriceContainer(
                buy: k800,
                karat: 'عيار 800',
                sale: k800 - 1,
              ),
            ],
          );
        }
        return Container();
      },
    );
  }
}
