import 'package:flutter/material.dart';
import 'package:foodgo/core/utils/styles.dart';

class CustomCategoryItem extends StatefulWidget {
  const CustomCategoryItem(
      {super.key, required this.title, required this.isChecked});
  final String title;
  final bool isChecked;

  @override
  // ignore: library_private_types_in_public_api
  _CustomCategoryItemState createState() => _CustomCategoryItemState();
}

class _CustomCategoryItemState extends State<CustomCategoryItem> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: widget.isChecked
            ? const Color(0xffEF2A39)
            : const Color(0xffF3F4F6),
      ),
      child: Text(
        widget.title,
        style: TextStyles.font20Medium(context).copyWith(
            color: widget.isChecked ? Colors.white : const Color(0xff6A6A6A)),
      ),
    );
  }
}
