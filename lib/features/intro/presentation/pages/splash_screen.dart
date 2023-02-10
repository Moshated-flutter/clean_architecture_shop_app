import '../bloc/splash_cubit/cubit/connection_status.dart';
import 'intro_main_wrapper.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../../core/common/widgets/custom_snack_bar.dart';
import '../bloc/splash_cubit/cubit/splash_cubit.dart';
import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SplashCubit>(context).checkconnectivity();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: DelayedWidget(
                delayDuration: Duration(milliseconds: 300),
                animationDuration: Duration(milliseconds: 2000),
                child: Image.asset(
                  'assets/images/shop_icon.png',
                  width: width * 0.8,
                ),
              ),
            ),
            BlocConsumer<SplashCubit, SplashState>(
              listener: (context, state) {
                if (state.connectionStatus is ConnectionON) {
                  goToHome();
                }
              },
              builder: (context, state) {
                if (state.connectionStatus is ConnectionInit ||
                    state.connectionStatus is ConnectionON) {
                  return Directionality(
                    textDirection: TextDirection.ltr,
                    child: LoadingAnimationWidget.prograssiveDots(
                      color: Colors.green,
                      size: 50,
                    ),
                  );
                }
                if (state.connectionStatus is ConnectionOFF) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('not connected to internet'),
                      SizedBox(
                        height: 20,
                      ),
                      IconButton(
                        onPressed: () {
                          BlocProvider.of<SplashCubit>(context)
                              .checkconnectivity();
                        },
                        icon: Icon(
                          Icons.autorenew,
                        ),
                      ),
                    ],
                  );
                }

                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> goToHome() {
    return Future.delayed(
      Duration(seconds: 3),
      () {
        CustomSnackBar.showSnackbar(context, "you have entered", Colors.green);
        Navigator.of(context).pushReplacementNamed(IntroMainWrapper.routeName);
      },
    );
  }
}
