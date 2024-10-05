import 'package:flutter/material.dart';
import 'package:foodgo/featuers/home/data/models/product_model.dart';
import 'package:foodgo/featuers/product/presentation/views/widgets/custom_app_bar_product_view.dart';
import 'package:foodgo/featuers/product/presentation/views/widgets/custom_product_of_burger.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          const SafeArea(
            child: SizedBox(
              height: 0,
            ),
          ),
          const CustomAppBarForProductView(),
          CustomProductForBurger(
            productModel: productModel,
          ),
        ],
      ),
    );
  }
}
