import 'package:flutter/material.dart';
import 'package:foodgo/core/utils/styles.dart';

class ToppingsAndSideOptionsRow extends StatelessWidget {
  const ToppingsAndSideOptionsRow({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: 140,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  title,
                  style: TextStyles.font22Medium(context)
                      .copyWith(color: Colors.white),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: const CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(0xffEF2A39),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
