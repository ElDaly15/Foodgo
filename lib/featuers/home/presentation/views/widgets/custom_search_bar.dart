import 'package:flutter/material.dart';
import 'package:foodgo/featuers/home/presentation/views/widgets/custom_search_text_field.dart';
import 'package:foodgo/featuers/home/presentation/views/widgets/custom_search_text_icon.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Flexible(child: CustomSearchTextField()),
        SizedBox(
          width: 20,
        ),
        CustomSearchSettingsIcon(),
      ],
    );
  }
}
