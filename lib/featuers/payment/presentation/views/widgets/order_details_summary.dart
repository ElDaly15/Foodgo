import 'package:flutter/material.dart';
import 'package:foodgo/featuers/home/data/models/product_model.dart';
import 'package:foodgo/featuers/payment/presentation/views/widgets/order_summary_item.dart';

class OrderDetailsSummary extends StatelessWidget {
  const OrderDetailsSummary({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OrderSummaryItem(
          title: 'Order Total',
          price: productModel.price,
        ),
        const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: OrderSummaryItem(
              title: 'Taxes',
              price: r'$0.00',
            )),
        const OrderSummaryItem(
          title: 'Delivery Fee',
          price: 'Free',
        )
      ],
    );
  }
}
