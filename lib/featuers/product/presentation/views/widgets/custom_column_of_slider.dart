import 'package:flutter/material.dart';
import 'package:foodgo/core/utils/styles.dart';
import 'package:foodgo/featuers/product/presentation/views/widgets/custom_slider.dart';

class CustomColumnOfSlider extends StatelessWidget {
  const CustomColumnOfSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'Spicy',
            style: TextStyles.font20Medium(context)
                .copyWith(color: const Color(0xff3C2F2F)),
          ),
        ),
        const CustomSlider(),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Mild',
              style: TextStyles.font20Medium(context).copyWith(
                color: const Color(0xff1CC019),
              ),
            ),
            const Spacer(),
            Text(
              'Hot',
              style: TextStyles.font20Medium(context).copyWith(
                color: const Color(0xffEF2A39),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
