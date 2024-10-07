import 'package:flutter/material.dart';
import 'package:foodgo/core/widgets/list_of_topings.dart';
import 'package:foodgo/featuers/product/presentation/views/widgets/custom_container_of_addons_and_side_options.dart';

class ListViewOfToppings extends StatelessWidget {
  const ListViewOfToppings({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: topings.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: index == topings.length - 1
                  ? const EdgeInsets.only(right: 12)
                  : index == 0
                      ? const EdgeInsets.only(left: 12, right: 30)
                      : const EdgeInsets.only(right: 30),
              child: CustomContainerForToppingsAndSideOptions(
                topingsModel: topings[index],
              ),
            );
          }),
    );
  }
}
