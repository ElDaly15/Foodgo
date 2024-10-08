import 'package:flutter/material.dart';
import 'package:foodgo/core/utils/styles.dart';
import 'package:foodgo/featuers/payment/presentation/views/widgets/check_box_for_save_cards.dart';

class RowOfSaveCardsWidget extends StatelessWidget {
  const RowOfSaveCardsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CheckBoxForSaveCards(),
        Text(
          'Save card details for future payments',
          style: TextStyles.font18Medium(context).copyWith(
            color: const Color(0xff808080),
          ),
        )
      ],
    );
  }
}
