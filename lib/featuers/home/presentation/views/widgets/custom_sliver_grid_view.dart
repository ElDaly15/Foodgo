import 'package:flutter/material.dart';
import 'package:foodgo/core/utils/images.dart';
import 'package:foodgo/featuers/home/data/models/product_model.dart';
import 'package:foodgo/featuers/home/presentation/views/widgets/product_item.dart';

class CustomSliverGridView extends StatefulWidget {
  const CustomSliverGridView({super.key});

  @override
  State<CustomSliverGridView> createState() => _CustomSliverGridViewState();
}

class _CustomSliverGridViewState extends State<CustomSliverGridView> {
  List<ProductModel> products = [
    ProductModel(
        title: 'Cheeseburger ',
        subTitle: 'Wendy\'s Burger',
        image: Assets.imagesBurger5,
        rating: '4.9'),
    ProductModel(
        title: 'Hamburger ',
        subTitle: 'Veggie Burger',
        image: Assets.imagesBurger2,
        rating: '4.8'),
    ProductModel(
        title: 'Hamburger ',
        subTitle: 'Chicken Burger',
        image: Assets.imagesBurger3,
        rating: '4.6'),
    ProductModel(
        title: 'ChickenBurger',
        subTitle: 'Fried Chicken Burger',
        image: Assets.imagesBurger4,
        rating: '4.5'),
    ProductModel(
        title: 'Hamburger ',
        subTitle: 'Chicken Burger',
        image: Assets.imagesBurger3,
        rating: '4.6'),
    ProductModel(
        title: 'Cheeseburger ',
        subTitle: 'Wendy\'s Burger',
        image: Assets.imagesBurger5,
        rating: '4.9'),
    ProductModel(
        title: 'Hamburger ',
        subTitle: 'Chicken Burger',
        image: Assets.imagesBurger3,
        rating: '4.6'),
    ProductModel(
        title: 'ChickenBurger',
        subTitle: 'Fried Chicken Burger',
        image: Assets.imagesBurger4,
        rating: '4.5'),
  ];

  @override
  Widget build(BuildContext context) {
    // Get screen width
    final screenWidth = MediaQuery.of(context).size.width;

    // Adjust crossAxisCount and childAspectRatio based on screen width
    final crossAxisCount = screenWidth < 600 ? 2 : 3;
    final childAspectRatio = screenWidth < 400
        ? 0.8
        : screenWidth < 600
            ? 185 / 225
            : 1.0;

    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: ProductItem(
            productModel: products[index],
          ),
        );
      },
    );
  }
}
