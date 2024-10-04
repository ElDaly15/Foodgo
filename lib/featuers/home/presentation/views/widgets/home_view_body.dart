import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodgo/core/utils/images.dart';
import 'package:foodgo/core/utils/styles.dart';
import 'package:foodgo/featuers/home/presentation/views/widgets/custom_category_list_view.dart';
import 'package:foodgo/featuers/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:foodgo/featuers/home/presentation/views/widgets/custom_search_bar.dart';

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
            height: 30,
          ),
        ),
        SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            sliver: CustomSliverGridView()),
      ],
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 4,
            spreadRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            Assets.imagesBurger5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Chesseburger',
                style: TextStyles.font20Medium(context).copyWith(
                  color: const Color(0xff3C2F2F),
                ),
              ),
              subtitle: Text(
                'Wendy\'s Burger',
                style: TextStyles.font18Regular(context).copyWith(
                  color: const Color(0xff3C2F2F),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Color(0xffFF9633),
                ),
                Text(
                  '4.9',
                  style: TextStyles.font18Medium(context)
                      .copyWith(color: const Color(0xff3C2F2F)),
                ),
                const Spacer(),
                const Icon(FontAwesomeIcons.heart),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSliverGridView extends StatelessWidget {
  const CustomSliverGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 185 / 225,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return const ProductItem();
        });
  }
}
