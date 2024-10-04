import 'package:flutter/material.dart';
import 'package:foodgo/featuers/home/presentation/views/widgets/custom_category_item.dart';

class CustomCategoryListView extends StatefulWidget {
  const CustomCategoryListView({super.key});

  @override
  State<CustomCategoryListView> createState() => _CustomCategoryListViewState();
}

class _CustomCategoryListViewState extends State<CustomCategoryListView> {
  List<String> titles = const [
    'All',
    'Indian',
    'Chinese',
    'Italian',
    'Mexican',
    'Thai',
    'Japanese',
    'Korean',
    'Vietnamese',
    'French',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: index == 0
                  ? const EdgeInsets.only(right: 8, left: 16)
                  : index == titles.length - 1
                      ? const EdgeInsets.only(right: 16)
                      : const EdgeInsets.only(right: 8),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: CustomCategoryItem(
                  isChecked: index == currentIndex,
                  title: titles[index],
                ),
              ),
            );
          }),
    );
  }
}
