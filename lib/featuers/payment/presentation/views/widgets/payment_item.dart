import 'package:flutter/material.dart';
import 'package:foodgo/core/utils/styles.dart';
import 'package:msh_checkbox/msh_checkbox.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({
    super.key,
    required this.image,
    required this.code,
    required this.title,
    required this.colors,
    required this.colorText,
    required this.isChecked,
    required this.onChanged,
  });

  final String image;
  final String code;
  final String title;
  final int colorText;
  final int colors;
  final bool isChecked;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        )
      ], color: Color(colors), borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Image.asset(image),
          title: Text(
            title,
            style: TextStyles.font18Medium(context).copyWith(
              color: Color(colorText),
            ),
          ),
          subtitle: Text(
            code,
            style: TextStyles.font14Bold(context).copyWith(
              color: Colors.grey,
            ),
          ),
          trailing: MSHCheckbox(
            size: 25,
            value: isChecked,
            colorConfig: MSHColorConfig.fromCheckedUncheckedDisabled(
              checkedColor: const Color(0xffEF2A39),
            ),
            style: MSHCheckboxStyle.stroke,
            onChanged: (selected) {
              onChanged();
            },
          ),
        ),
      ),
    );
  }
}
