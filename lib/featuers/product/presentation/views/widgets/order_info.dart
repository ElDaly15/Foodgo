import 'package:flutter/material.dart';
import 'package:foodgo/core/utils/styles.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({super.key, required this.price});
  final String price;
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
              backgroundColor: const Color(0xffEF2A39),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Order Now!',
              style: TextStyles.font18Medium(context)
                  .copyWith(color: Colors.white),
            )),
      ),
    );
  }
}
