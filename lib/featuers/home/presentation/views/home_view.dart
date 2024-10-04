import 'package:flutter/material.dart';
import 'package:foodgo/core/widgets/custom_bottom_nav_bar.dart';
import 'package:foodgo/core/widgets/custom_floating_action_bottom.dart';
import 'package:foodgo/featuers/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const routeName = 'homeView';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeViewBody(),
          HomeViewBody(),
          HomeViewBody(),
          HomeViewBody(),
        ],
      ),
      floatingActionButton: const CustomFloatingActionBottom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavBar(
        onTap: (index) {
          pageController.jumpToPage(index);
        },
      ),
    );
  }
}
