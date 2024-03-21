part of "../../../../../../core/import/app_import.dart";

class CustomMyCardPricing extends StatelessWidget {
  const CustomMyCardPricing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // * Prudact price
        const OrderInfoItem(
          title: 'Order Subtotal',
          value: r'42.97$',
        ),
        // * Space
        3.verticalSpace,
        // * Discount
        const OrderInfoItem(
          title: 'Discount',
          value: r'0$',
        ),
        // * Space
        3.verticalSpace,
        // * Tax
        const OrderInfoItem(
          title: 'Shipping',
          value: r'8$',
        ),
        // * Divider
        const Divider(
          thickness: 2,
          height: 34,
          color: Color(0xffC7C7C7),
        ),
        // * Total Price
        const TotalPrice(title: 'Total', value: r'$50.97'),
      ],
    );
  }
}
