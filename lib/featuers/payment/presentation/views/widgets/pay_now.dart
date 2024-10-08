import 'package:flutter/material.dart';
import 'package:foodgo/core/utils/styles.dart';
import 'package:foodgo/featuers/home/data/models/product_model.dart';

class PayNow extends StatelessWidget {
  const PayNow({super.key, required this.price, required this.productModel});
  final String price;
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        'Total',
        style: TextStyles.font18Bold(context).copyWith(
          fontFamily: 'Lobster',
          fontSize: 25,
          color: const Color(0xff3C2F2F),
        ),
      ),
      subtitle: Text(
        price,
        style: TextStyles.font24Medium(context).copyWith(
          fontSize: 35,
          fontFamily: 'Poppins',
          color: const Color(0xff6A6A6A),
        ),
      ),
      trailing: SizedBox(
        width: 200,
        height: 70,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff3C2F2F),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Pay Now!',
              style: TextStyles.font18Medium(context)
                  .copyWith(color: Colors.white),
            )),
      ),
    );
  }
}
