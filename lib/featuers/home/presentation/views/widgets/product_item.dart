import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodgo/core/utils/styles.dart';
import 'package:foodgo/featuers/home/data/models/product_model.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Adjust image height based on screen width
    final imageHeight = screenWidth < 400 ? 80.0 : 120.0;

    // Adjust padding and font size based on screen size
    final paddingValue = screenWidth < 400 ? 8.0 : 10.0;
    final titleFontSize = screenWidth < 400 ? 16.0 : 20.0;
    final subtitleFontSize = screenWidth < 400 ? 14.0 : 18.0;
    final ratingFontSize = screenWidth < 400 ? 14.0 : 18.0;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 4,
            spreadRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          // Adjust image size
          Image.asset(
            productModel.image,
            height: imageHeight,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: paddingValue),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                productModel.title,
                style: TextStyles.font20Medium(context).copyWith(
                  color: const Color(0xff3C2F2F),
                  fontSize: titleFontSize, // Adjust title font size
                ),
              ),
              subtitle: Text(
                productModel.subTitle,
                style: TextStyles.font18Regular(context).copyWith(
                  color: const Color(0xff3C2F2F),
                  fontSize: subtitleFontSize, // Adjust subtitle font size
                ),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: paddingValue, vertical: 4),
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Color(0xffFF9633),
                ),
                Text(
                  productModel.rating,
                  style: TextStyles.font18Medium(context).copyWith(
                    color: const Color(0xff3C2F2F),
                    fontSize: ratingFontSize, // Adjust rating font size
                  ),
                ),
                const Spacer(),
                InkWell(
                    onTap: () {}, child: const Icon(FontAwesomeIcons.heart)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
