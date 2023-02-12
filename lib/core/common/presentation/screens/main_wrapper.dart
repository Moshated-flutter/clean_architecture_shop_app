import 'package:clean_architecture_shop_app/core/common/presentation/bloc/bottom_nav_cubit/bottom_nav_cubit.dart';
import 'package:clean_architecture_shop_app/core/common/presentation/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainWrapper extends StatelessWidget {
  static const routeName = '/main_wrapper';
  MainWrapper({super.key});
  PageController pageController = PageController();

  List<Widget> topLevelScreens = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.pink,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(controller: pageController),
      body: PageView(
        controller: pageController,
        children: topLevelScreens,
        onPageChanged: (value) =>
            BlocProvider.of<BottomNavCubit>(context).changeSelectedIndex(value),
      ),
    );
  }
}
