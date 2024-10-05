import 'package:flutter/material.dart';
import 'package:foodgo/core/widgets/list_of_foods.dart';
import 'package:foodgo/featuers/home/presentation/views/widgets/product_item.dart';
import 'package:foodgo/featuers/product/presentation/views/product_view.dart';

class CustomSliverGridView extends StatefulWidget {
  const CustomSliverGridView({super.key});

  @override
  State<CustomSliverGridView> createState() => _CustomSliverGridViewState();
}

class _CustomSliverGridViewState extends State<CustomSliverGridView> {
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
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductView(
                      productModel: products[index],
                    )));
          },
          child: ProductItem(
            productModel: products[index],
          ),
        );
      },
    );
  }
}
