import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:souq/core/utils/app_router.dart';
import 'package:souq/core/utils/styles.dart';

class LoginContainer extends StatefulWidget {
  const LoginContainer({
    super.key,
  });

  @override
  State<LoginContainer> createState() => _LoginContainerState();
}

class _LoginContainerState extends State<LoginContainer> {
  @override
  void initState() {
    super.initState();
    checkUserSignInStatus();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        signInWithGoogle();
        GoRouter.of(context).push(AppRouter.kSplashView);
      },
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * .7,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/gmail-new-icon5198.jpg',
            ),
            const Text(
              'Login with Google',
              style: Styles.intprice,
            )
          ],
        ),
      ),
    );
  }

  Future<void> checkUserSignInStatus() async {
    if (FirebaseAuth.instance.currentUser != null) {
      Future.delayed(Duration.zero, () {
        GoRouter.of(context).go(AppRouter.kSplashView);
      });
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
