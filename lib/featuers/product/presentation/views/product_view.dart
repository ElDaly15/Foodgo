import 'package:flutter/material.dart';
import 'package:foodgo/featuers/home/data/models/product_model.dart';
import 'package:foodgo/featuers/product/presentation/views/widgets/product_view_body.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ProductViewBody(
        productModel: productModel,
      ),
    );
  }
}
