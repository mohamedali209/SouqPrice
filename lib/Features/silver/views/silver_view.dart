import 'package:flutter/material.dart';
import 'package:souq/Features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:souq/Features/silver/views/widgets/silver_body.dart';

class Silverview extends StatelessWidget {
  const Silverview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(),
      body: SilverBody(),
    );
  }
}

