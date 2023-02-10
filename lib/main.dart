import 'core/locator/locator.dart';
import 'features/intro/presentation/bloc/splash_cubit/cubit/splash_cubit.dart';
import 'features/intro/presentation/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => locator<SplashCubit>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'NBI Shop',
        home: SplashScreen(),
      ),
    );
  }
}
