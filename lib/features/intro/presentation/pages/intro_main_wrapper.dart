import 'package:clean_architecture_shop_app/features/intro/presentation/widgets/get_start_btn.dart';
import 'package:clean_architecture_shop_app/features/intro/presentation/widgets/intro_page.dart';
import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroMainWrapper extends StatelessWidget {
  static const routeName = '/intro_screen';

  IntroMainWrapper({super.key});

  final PageController pageController = PageController();

// todo: find the code and files
  final List<Widget> introPages = [
    const IntroPage(title: '', description: '', image: ''),
    const IntroPage(title: '', description: '', image: ''),
    const IntroPage(title: '', description: '', image: ''),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          //image background
          Positioned(
            top: 0,
            child: Container(
              height: height * 0.6,
              width: width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100),
                ),
                color: Colors.green,
              ),
            ),
          ),
          //page view
          Positioned(
            bottom: height * 0.1,
            child: SizedBox(
              width: width,
              height: height * 0.25,
              child: PageView(
                controller: pageController,
                children: introPages,
              ),
            ),
          ),
          // button
          Positioned(
            bottom: height * 0.25,
            right: 20,
            child: DelayedWidget(
              delayDuration: const Duration(milliseconds: 300),
              animationDuration: const Duration(seconds: 1),
              child: GetStartBtn(
                text: 'ورق بزن',
                onTap: () {
                  if (pageController.page!.toInt() < 2) {
                    pageController.animateTo(
                      pageController.page!.toInt() + 1,
                      duration: Duration(milliseconds: 200),
                      curve: Curves.bounceIn,
                    );
                  }
                },
              ),
            ),
          ),

          //page indicator
          Positioned(
            bottom: height * 0.25,
            left: 20,
            child: DelayedWidget(
              delayDuration: const Duration(milliseconds: 300),
              animationDuration: const Duration(seconds: 1),
              child: SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: theme.indicatorColor,
                  spacing: 5,
                  dotHeight: 10,
                  dotWidth: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
