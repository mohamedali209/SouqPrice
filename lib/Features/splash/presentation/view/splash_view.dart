import 'package:flutter/material.dart';
import 'package:souq/Features/splash/presentation/view/widgets/splash_viewBody.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  SplashViewBody(),
    );
  }
}