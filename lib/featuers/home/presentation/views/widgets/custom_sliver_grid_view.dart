import 'package:flutter/material.dart';
import 'package:foodgo/featuers/home/presentation/views/widgets/product_item.dart';

class CustomSliverGridView extends StatelessWidget {
  const CustomSliverGridView({super.key});

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
      itemBuilder: (context, index) {
        return const ProductItem();
      },
    );
  }
}
