import 'package:clean_architecture_shop_app/core/common/presentation/screens/main_wrapper.dart';
import 'package:clean_architecture_shop_app/core/common/utils/constants.dart';
import 'package:clean_architecture_shop_app/features/intro/presentation/bloc/intro_cubit/cubit/intro_cubit.dart';
import 'package:clean_architecture_shop_app/features/intro/presentation/widgets/get_start_btn.dart';
import 'package:clean_architecture_shop_app/features/intro/presentation/widgets/intro_page.dart';
import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroMainWrapper extends StatelessWidget {
  static const routeName = '/intro_screen';

  IntroMainWrapper({super.key});

  final PageController pageController = PageController();

// todo: find the code and files
  final List<Widget> introPages = [
    const IntroPage(
      title: IntroDescriptions.FIRST_TITLE,
      description: IntroDescriptions.FIRST_SUBTITLE,
      image: ImagePath.AUDI,
    ),
    const IntroPage(
      title: IntroDescriptions.SECEND_TITLE,
      description: IntroDescriptions.SECEND_SUBTITLE,
      image: ImagePath.BMW,
    ),
    const IntroPage(
      title: IntroDescriptions.THIRD_TITLE,
      description: IntroDescriptions.THIRD_SUBTITLE,
      image: ImagePath.MOTORCYCLE,
    ),
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
              height: height * 0.9,
              child: PageView(
                onPageChanged: (value) {
                  if (value == 2) {
                    BlocProvider.of<IntroCubit>(context)
                        .changeShowGetStart(true);
                  } else {
                    BlocProvider.of<IntroCubit>(context)
                        .changeShowGetStart(false);
                  }
                },
                controller: pageController,
                children: introPages,
              ),
            ),
          ),
          // button
          Positioned(
            bottom: height * 0.03,
            right: 20,
            child:
                BlocBuilder<IntroCubit, IntroState>(builder: (context, state) {
              if (state.showGetStart) {
                return DelayedWidget(
                  delayDuration: const Duration(milliseconds: 300),
                  animationDuration: const Duration(seconds: 1),
                  animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
                  child: GetStartBtn(
                    text: 'شروع کنید',
                    onTap: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        MainWrapper.routeName,
                        (route) => false,
                      );
                    },
                  ),
                );
              } else {
                return DelayedWidget(
                  delayDuration: const Duration(milliseconds: 300),
                  animationDuration: const Duration(seconds: 1),
                  animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
                  child: GetStartBtn(
                    text: 'ورق بزن',
                    onTap: () {
                      if (pageController.page!.toInt() < 2) {
                        if (pageController.page!.toInt() == 1) {
                          BlocProvider.of<IntroCubit>(context)
                              .changeShowGetStart(true);
                        }
                        pageController.animateToPage(
                          pageController.page!.toInt() + 1,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                  ),
                );
              }
            }),
          ),

          //page indicator
          Positioned(
            bottom: height * 0.03,
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
