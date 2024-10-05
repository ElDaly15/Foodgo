import 'package:flutter/material.dart';
import 'package:foodgo/core/utils/styles.dart';

class PortionOfProducts extends StatefulWidget {
  const PortionOfProducts({super.key});

  @override
  State<PortionOfProducts> createState() => _PortionOfProductsState();
}

class _PortionOfProductsState extends State<PortionOfProducts> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'Portion',
            style: TextStyles.font20Medium(context)
                .copyWith(color: const Color(0xff3C2F2F)),
          ),
        ),
        Row(
          children: [
            IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: const Color(0xffEF2A39),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              onPressed: () {
                setState(() {
                  counter == 1 ? null : counter--;
                });
              },
              icon: const Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                counter.toString(),
                style: TextStyles.font20Medium(context)
                    .copyWith(color: const Color(0xff3C2F2F)),
              ),
            ),
            IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: const Color(0xffEF2A39),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
