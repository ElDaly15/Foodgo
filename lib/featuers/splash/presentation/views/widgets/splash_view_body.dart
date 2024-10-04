import 'package:flutter/material.dart';
import 'package:foodgo/core/utils/images.dart';
import 'package:foodgo/core/utils/styles.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xffFF939B),
            Color(0xffEF2A39),
            Color(0xffEF2A39),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            top: MediaQuery.of(context).size.height * 0.35,
            left: 0,
            child: Text(
              'Foodgo',
              style: TextStyles.font24Regular(context).copyWith(
                  fontFamily: 'Lobster', color: Colors.white, fontSize: 55),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(bottom: 0, child: Image.asset(Assets.imagesBurger7)),
          Positioned(
              bottom: 0, left: 130, child: Image.asset(Assets.imagesBurger6)),
        ],
      ),
    );
  }
}
