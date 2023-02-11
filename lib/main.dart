import 'package:clean_architecture_shop_app/core/config/theme/my_theme.dart';
import 'package:clean_architecture_shop_app/features/intro/presentation/bloc/intro_cubit/cubit/intro_cubit.dart';

import 'features/intro/presentation/pages/intro_main_wrapper.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
        BlocProvider(
          create: (context) => IntroCubit(),
        ),
      ],
      child: MaterialApp(
        themeMode: ThemeMode.light,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        debugShowCheckedModeBanner: false,
        title: 'NBI Shop',
        locale: Locale('fa', ''),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en', ''),
          Locale('fa', ''),
        ],
        initialRoute: '/',
        routes: {
          IntroMainWrapper.routeName: (context) => IntroMainWrapper(),
        },
        home: SplashScreen(),
      ),
    );
  }
}
