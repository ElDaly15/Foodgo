import 'package:flutter/material.dart';
import 'package:foodgo/core/utils/images.dart';
import 'package:foodgo/core/utils/styles.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(14), boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 3,
          blurRadius: 5,
          offset: const Offset(0, 0), // changes position of shadow
        )
      ]),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none,
          ),
          hintText: 'Search',
          hintStyle: TextStyles.font20Medium(context).copyWith(
            color: const Color(0xff3C2F2F),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: SizedBox(
              child: Image.asset(
                Assets.imagesSearch,
              ),
            ),
          ),
        ),
        cursorColor: const Color(0xff3C2F2F),
      ),
    );
  }
}
