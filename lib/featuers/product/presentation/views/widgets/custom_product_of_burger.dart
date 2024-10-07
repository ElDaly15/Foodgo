import 'package:flutter/material.dart';
import 'package:foodgo/core/utils/styles.dart';
import 'package:foodgo/featuers/home/data/models/product_model.dart';
import 'package:foodgo/featuers/product/presentation/views/widgets/custom_column_of_slider.dart';
import 'package:foodgo/featuers/product/presentation/views/widgets/list_view_of_side_options.dart';
import 'package:foodgo/featuers/product/presentation/views/widgets/list_view_of_toppings.dart';
import 'package:foodgo/featuers/product/presentation/views/widgets/portion_of_burgers.dart';

class CustomProductForBurger extends StatefulWidget {
  const CustomProductForBurger({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  State<CustomProductForBurger> createState() => _CustomProductForBurgerState();
}

class _CustomProductForBurgerState extends State<CustomProductForBurger> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              widget.productModel.image,
              scale: 0.5,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                '${widget.productModel.title}${widget.productModel.subTitle}',
                style: TextStyles.font22Bold(context)
                    .copyWith(color: const Color(0xff3C2F2F), fontSize: 25),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Color(0xffFF9633),
                  size: 22,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '${widget.productModel.rating} | ${widget.productModel.timeOfProductCooking}',
                  style: TextStyles.font18Medium(context).copyWith(
                    color: const Color(0xff808080),
                    fontSize: 15, // Adjust rating font size
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              widget.productModel.productInfo,
              style: TextStyles.font16Medium(context)
                  .copyWith(color: const Color(0xff6A6A6A)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Flexible(child: CustomColumnOfSlider()),
                SizedBox(
                  width: 50,
                ),
                PortionOfProducts(),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              'Toppings',
              style: TextStyles.font24Medium(context)
                  .copyWith(color: const Color(0xff3C2F2F)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const ListViewOfToppings(),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              'Side Options',
              style: TextStyles.font24Medium(context)
                  .copyWith(color: const Color(0xff3C2F2F)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const ListViewOfSideOptions(),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
