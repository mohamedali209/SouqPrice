import 'package:flutter/material.dart';
import 'package:souq/Features/login/view/widgets/login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:LoginBody() ,
    );
  }
}

