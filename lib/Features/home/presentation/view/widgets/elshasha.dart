import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:souq/Features/home/presentation/manager/cubit/prices_cubit.dart';
import 'package:souq/core/utils/styles.dart';

class Elshasha extends StatefulWidget {
  const Elshasha({super.key});

  @override
  State<Elshasha> createState() => _ElshashaState();
}
class _ElshashaState extends State<Elshasha> {
  bool isGreen = false;
  @override
  void initState() {
    super.initState();
    BlocProvider.of<PricesCubit>(context).fetchPrice();
    animateColor();
  }
  void animateColor() {
    setState(() {
      isGreen = true;
    });
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isGreen = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PricesCubit, PricesState>(
      builder: (context, state) {
        if (state is Pricesloading) {
          return const CircularProgressIndicator(color: Colors.amber,);
        } else if (state is Pricessuceess) {
          return AnimatedContainer(
            duration: const Duration(seconds: 1),
            height: MediaQuery.of(context).size.height * .06,
            width: MediaQuery.of(context).size.width * .8,
            decoration: BoxDecoration(
              color: isGreen ? Colors.amber : Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(15)),
            ),
            child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('الشاشة', style: Styles.karat.copyWith(fontSize: 20)),
                Text(
                  '${state.price}',
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Icon(
                  Icons.arrow_upward,
                  color: Colors.green,
                ),
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}
