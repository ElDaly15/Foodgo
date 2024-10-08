import 'package:flutter/material.dart';
import 'package:foodgo/core/utils/styles.dart';
import 'package:foodgo/featuers/home/data/models/product_model.dart';

class TotalInfo extends StatelessWidget {
  const TotalInfo({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Total:',
          style: TextStyles.font22Bold(context).copyWith(
            color: const Color(0xff3C2F2F),
          ),
        ),
        const Spacer(),
        Text(
          productModel.price,
          style: TextStyles.font22Bold(context).copyWith(
            color: const Color(0xff3C2F2F),
          ),
        ),
      ],
    );
  }
}
