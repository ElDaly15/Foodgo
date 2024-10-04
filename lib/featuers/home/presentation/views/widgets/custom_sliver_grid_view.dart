import 'package:flutter/material.dart';
import 'package:foodgo/featuers/home/presentation/views/widgets/product_item.dart';

class CustomSliverGridView extends StatelessWidget {
  const CustomSliverGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 185 / 225,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return const ProductItem();
        });
  }
}
