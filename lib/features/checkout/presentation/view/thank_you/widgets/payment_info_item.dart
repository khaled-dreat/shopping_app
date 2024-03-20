part of '../../../../../../core/import/app_import.dart';

class PaymentItemInfo extends StatelessWidget {
  const PaymentItemInfo({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppTheme.b1(context),
        ),
        Text(
          value,
          style: AppTheme.b1(context),
        )
      ],
    );
  }
}
