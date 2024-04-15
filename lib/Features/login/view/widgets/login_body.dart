import 'package:flutter/material.dart';
import 'package:souq/Features/login/view/widgets/login_containerButto.dart';
import 'package:souq/core/utils/styles.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Center(
            child: Text(
          'اهلا بيك',
          style: Styles.ahlanbek,
        )
        ),
        SizedBox(height: 20,),
        LoginContainer()
  ]);}
}
