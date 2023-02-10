import 'package:clean_architecture_shop_app/features/intro/presentation/widgets/get_start_btn.dart';
import 'package:clean_architecture_shop_app/features/intro/presentation/widgets/intro_page.dart';
import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';

class IntroMainWrapper extends StatelessWidget {
  static const routeName = '/intro_screen';

  IntroMainWrapper({super.key});

  final PageController pageController = PageController();
  final List<Widget> introPages = [
    const IntroPage(title: '', description: '', image: ''),
    const IntroPage(title: '', description: '', image: ''),
    const IntroPage(title: '', description: '', image: ''),
  ];

  @override
  Widget build(BuildContext context) {
    // final args = ModalRoute.of(context)!.settings.arguments ;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
//image
          Positioned(
            top: 0,
            child: Container(
              height: height * 0.6,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100),
                ),
                color: Colors.green,
              ),
              child: Image.asset(''),
            ),
          ),

          Positioned(
            bottom: height*0.1,
            child: SizedBox(
              width: width,
              height: height*0.25,
              child: PageView(
                controller: pageController,
                children: introPages,
              ),
            ),
          ),

          Positioned(
            bottom: height*0.25,
            child: DelayedWidget(
              delayDuration: Duration(milliseconds: 300),
              animationDuration: Duration(seconds: 1),
              child: GetStartBtn(
                text: 'ورق بزن',
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
