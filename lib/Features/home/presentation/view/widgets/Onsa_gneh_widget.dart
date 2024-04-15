import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:souq/Features/home/presentation/manager/cubit/prices_cubit.dart';
import 'package:souq/Features/home/presentation/view/widgets/smallBox.dart';
import 'package:souq/core/utils/commas.dart';

class OnsaGneh extends StatelessWidget {
  const OnsaGneh({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<PricesCubit>(context).fetchPrice();
    return BlocBuilder<PricesCubit, PricesState>(
      builder: (context, state) {
        if (state is Pricesloading) {
          return Container();
        } else if (state is Pricessuceess) {
          String gneh = state.gneh.toString();
          String onsa = state.onsa.toString();
          return Row(
            children: [
              SmallBox(se3r: addCommasToNumberString3(gneh), esm: 'الجنية'),
              SizedBox(width: MediaQuery.of(context).size.width * .2),
              SmallBox(se3r: addCommasToNumberString3(onsa), esm: 'الاونصة'),
            ],
          );
        }
        return Container();
      },
    );
  }
}
