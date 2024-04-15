import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:souq/Features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:souq/Features/home/presentation/view/widgets/home_viewbody.dart';
import 'package:souq/core/utils/app_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kCalcView);
          },
          child: const Icon(
            Icons.calculate,
            color: Colors.black,
          )),
      appBar: const CustomAppbar(),
      body: const HomeViewBody(),
    );
  }
}
