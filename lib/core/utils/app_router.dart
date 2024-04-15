import 'package:go_router/go_router.dart';
import 'package:souq/Features/calculator/presentation/view/calculator_view.dart';
import 'package:souq/Features/home/presentation/view/home_view.dart';
import 'package:souq/Features/login/view/login_view.dart';
import 'package:souq/Features/silver/views/silver_view.dart';
import 'package:souq/Features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
   static const kCalcView = '/CalcView';
  static const kSilverView = '/silverView';
    static const kSplashView = '/splashView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: kSplashView,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
     GoRoute(
      path:kCalcView,
      builder: (context, state) => const CalculatorView(),
    ),
     GoRoute(
      path:kSilverView,
      builder: (context, state) => const Silverview(),
    ),
  ]);
}
