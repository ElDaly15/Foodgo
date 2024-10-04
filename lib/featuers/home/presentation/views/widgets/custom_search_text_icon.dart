import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchSettingsIcon extends StatelessWidget {
  const CustomSearchSettingsIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xffEF2A39),
        borderRadius: BorderRadius.circular(14),
      ),
      child: const Icon(
        FontAwesomeIcons.sliders,
        color: Colors.white,
      ),
    );
  }
}
