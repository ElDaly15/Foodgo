import 'package:flutter/material.dart';

class CustomFloatingActionBottom extends StatelessWidget {
  const CustomFloatingActionBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 12,
      backgroundColor: const Color(0xffEF2A39),
      shape: const CircleBorder(),
      onPressed: () {},
      child: const Icon(
        Icons.add,
        size: 35,
        color: Colors.white,
      ),
    );
  }
}
