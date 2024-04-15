import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:souq/Features/splash/presentation/view/widgets/sliding_text.dart';
import 'package:souq/core/utils/app_router.dart';
import 'package:souq/core/utils/styles.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});
  @override
  State<SplashViewBody> createState() => _SplashViewbodyState();
}
class _SplashViewbodyState extends State<SplashViewBody>
  with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigate();
  }
  @override
  void dispose() {
    super.dispose();
  animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
            child: Text(
          'اهلا بيك',
          style: Styles.ahlanbek,
        )),
       const SizedBox(height: 15,),
        Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 30),
            child: SlidingText(slidingAnimation: slidingAnimation)),
      ],
    );
  }
  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero) .animate(animationController);
    animationController.forward();
  }
  navigate() { return Future.delayed(const Duration(seconds: 3), () { GoRouter.of(context).push(AppRouter.kHomeView); });
  }
}
