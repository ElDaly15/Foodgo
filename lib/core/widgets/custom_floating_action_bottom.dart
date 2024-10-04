import 'package:flutter/material.dart';

class CustomFloatingActionBottom extends StatelessWidget {
  const CustomFloatingActionBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xffEF2A39),
      shape: const CircleBorder(),
      onPressed: () {},
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
