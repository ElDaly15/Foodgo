import 'package:flutter/material.dart';
import 'package:foodgo/featuers/product/data/topings_model.dart';
import 'package:foodgo/featuers/product/presentation/views/widgets/toppings_and_side_options_row.dart';

class CustomContainerForToppingsAndSideOptions extends StatelessWidget {
  const CustomContainerForToppingsAndSideOptions(
      {super.key, required this.topingsModel});

  final TopingsModel topingsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 0), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(29),
          color: const Color(0xff3C2F2F)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            width: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22), color: Colors.white),
            child: Center(
              child: Image.asset(
                topingsModel.image,
                width: 130,
                height: 74,
                alignment: Alignment.center,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ToppingsAndSideOptionsRow(
            title: topingsModel.title,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
