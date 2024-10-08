import 'package:flutter/material.dart';

class CheckBoxForSaveCards extends StatefulWidget {
  const CheckBoxForSaveCards({super.key});

  @override
  State<CheckBoxForSaveCards> createState() => _CheckBoxForSaveCardsState();
}

class _CheckBoxForSaveCardsState extends State<CheckBoxForSaveCards> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: const Color(0xffEF2A39),
      side: const BorderSide(
        color: Color(0xffEF2A39),
      ),
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = value;
        });
      },
    );
  }
}
