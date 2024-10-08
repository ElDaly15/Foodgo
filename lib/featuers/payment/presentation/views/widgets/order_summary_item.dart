import 'package:flutter/material.dart';
import 'package:foodgo/core/utils/styles.dart';

class OrderSummaryItem extends StatelessWidget {
  const OrderSummaryItem({super.key, required this.title, required this.price});
  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyles.font18Medium(context)
              .copyWith(color: const Color(0xff6A6A6A)),
        ),
        const Spacer(),
        Text(
          price,
          style: TextStyles.font18Medium(context)
              .copyWith(color: const Color(0xff6A6A6A)),
        ),
      ],
    );
  }
}
