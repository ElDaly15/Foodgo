import 'package:flutter/material.dart';
import 'package:foodgo/featuers/home/presentation/views/widgets/custom_category_list_view.dart';
import 'package:foodgo/featuers/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:foodgo/featuers/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:foodgo/featuers/home/presentation/views/widgets/custom_sliver_grid_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            child: SizedBox(),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomHomeAppBar(),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomSearchBar(),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        SliverToBoxAdapter(child: CustomCategoryListView()),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            sliver: CustomSliverGridView()),
      ],
    );
  }
}
