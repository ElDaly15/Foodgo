import 'package:flutter/material.dart';
import 'package:foodgo/core/utils/images.dart';
import 'package:foodgo/core/utils/styles.dart';
import 'package:foodgo/featuers/home/data/models/product_model.dart';
import 'package:foodgo/featuers/payment/presentation/views/widgets/order_details_summary.dart';
import 'package:foodgo/featuers/payment/presentation/views/widgets/payment_item.dart';
import 'package:foodgo/featuers/payment/presentation/views/widgets/row_of_save_cards.dart';
import 'package:foodgo/featuers/payment/presentation/views/widgets/total_info.dart';
import 'package:foodgo/featuers/product/presentation/views/widgets/custom_app_bar_product_view.dart';

class OrderSummaryViewBody extends StatefulWidget {
  const OrderSummaryViewBody({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  State<OrderSummaryViewBody> createState() => _OrderSummaryViewBodyState();
}

class _OrderSummaryViewBodyState extends State<OrderSummaryViewBody> {
  bool isMasterCardSelected = false;
  bool isVisaSelected = false;

  void onPaymentMethodSelected(String method) {
    setState(() {
      if (method == 'MasterCard') {
        isMasterCardSelected = true;
        isVisaSelected = false;
      } else if (method == 'Visa') {
        isVisaSelected = true;
        isMasterCardSelected = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SafeArea(
          child: SizedBox(),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: CustomAppBarForProductView(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            'Order Summary',
            style: TextStyles.font22SemiBold(context).copyWith(
              color: const Color(0xff3C2F2F),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 8),
          child: OrderDetailsSummary(
            productModel: widget.productModel,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Divider(
          thickness: 1,
          color: Colors.grey.shade300,
          height: 1,
          indent: 30,
          endIndent: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
          child: TotalInfo(
            productModel: widget.productModel,
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Payment Methods',
            style: TextStyles.font22SemiBold(context).copyWith(
              color: const Color(0xff3C2F2F),
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: PaymentItem(
            colorText: 0xffffffff,
            colors: 0xff3C2F2F,
            image: Assets.imagesMaster,
            code: '5105 **** **** 0505',
            title: 'MasterCard',
            isChecked: isMasterCardSelected,
            onChanged: () => onPaymentMethodSelected('MasterCard'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: PaymentItem(
            colorText: 0xff3C2F2F,
            colors: 0xffffffff,
            image: Assets.imagesVisa,
            code: '3566 **** **** 0505',
            title: 'Visa',
            isChecked: isVisaSelected,
            onChanged: () => onPaymentMethodSelected('Visa'),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: RowOfSaveCardsWidget(),
        ),
      ],
    );
  }
}
