import 'package:flutter/material.dart';
import 'package:foodgo/featuers/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:foodgo/featuers/home/presentation/views/widgets/custom_search_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SafeArea(
            child: SizedBox(),
          ),
          CustomHomeAppBar(),
          SizedBox(
            height: 20,
          ),
          CustomSearchBar(),
        ],
      ),
    );
  }
}
