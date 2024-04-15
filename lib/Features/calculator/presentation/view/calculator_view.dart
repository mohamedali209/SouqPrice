import 'package:flutter/material.dart';
import 'package:souq/Features/calculator/presentation/view/widgets/calcAppbar.dart';
import 'package:souq/Features/calculator/presentation/view/widgets/calculator_body.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbarCalc(),
      body: CalculatorBody(),
    );
  }
}

