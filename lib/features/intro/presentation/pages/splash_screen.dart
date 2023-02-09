import 'package:clean_architecture_shop_app/core/common/widgets/custom_snack_bar.dart';
import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    goToHome();
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
            Text('not connected to internet'),
            SizedBox(
              height: 20,
            )
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
      },
    );
  }
}
