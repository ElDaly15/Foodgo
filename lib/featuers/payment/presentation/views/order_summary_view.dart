import 'package:flutter/material.dart';
import 'package:foodgo/featuers/home/data/models/product_model.dart';
import 'package:foodgo/featuers/payment/presentation/views/widgets/order_summary_view_body.dart';

class OrdersSummaryView extends StatelessWidget {
  const OrdersSummaryView({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: OrderSummaryViewBody(
        productModel: productModel,
      ),
    );
  }
}
