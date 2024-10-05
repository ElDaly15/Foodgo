import 'package:flutter/material.dart';
import 'package:foodgo/core/utils/images.dart';

class CustomAppBarForProductView extends StatelessWidget {
  const CustomAppBarForProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(Assets.imagesArrowLeft)),
        const Spacer(),
        Image.asset(Assets.imagesSearch),
      ],
    );
  }
}
