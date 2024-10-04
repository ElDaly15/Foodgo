import 'package:flutter/material.dart';
import 'package:foodgo/core/utils/images.dart';
import 'package:foodgo/core/utils/styles.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        'Foodgo',
        style: TextStyles.font16Bold(context).copyWith(
            fontFamily: 'Lobster',
            fontSize: 38,
            color: const Color(0xff3C2F2F)),
      ),
      subtitle: Text(
        'Order your favorite food!',
        style: TextStyles.font18Medium(context).copyWith(
          fontFamily: 'Poppins',
          color: const Color(0xff6A6A6A),
        ),
      ),
      trailing: ClipRRect(
        borderRadius: BorderRadius.circular(14), // Adjust the radius as needed
        child: Image.asset(Assets.imagesAvatar),
      ),
    );
  }
}
