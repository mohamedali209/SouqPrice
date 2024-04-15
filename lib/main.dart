import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:souq/Features/home/presentation/manager/cubit/prices_cubit.dart';
import 'package:souq/Features/silver/presentation/manager/cubit/silver_price_cubit.dart';
import 'package:souq/core/utils/app_router.dart';
import 'package:souq/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Souq());
}

class Souq extends StatelessWidget {
  const Souq({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => PricesCubit(),),
          BlocProvider(create: (context) => SilverPriceCubit(),)
        ],
        
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: const Color.fromARGB(255, 4, 23, 38),
          ),
        ),
      ),
    );
  }
}
