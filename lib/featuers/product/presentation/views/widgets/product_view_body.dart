import 'package:flutter/material.dart';
import 'package:foodgo/featuers/home/data/models/product_model.dart';
import 'package:foodgo/featuers/product/presentation/views/widgets/custom_app_bar_product_view.dart';
import 'package:foodgo/featuers/product/presentation/views/widgets/custom_product_of_burger.dart';
import 'package:foodgo/featuers/product/presentation/views/widgets/order_info.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SafeArea(
            child: SizedBox(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: CustomAppBarForProductView(),
          ),
          CustomProductForBurger(
            productModel: productModel,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: OrderInfo(
              productModel: productModel,
              price: productModel.price,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
