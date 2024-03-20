part of '../../../../../../core/import/app_import.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppTheme.h6(context),
        ),
        const Spacer(),
        Text(
          value,
          textAlign: TextAlign.center,
          style: AppTheme.h6(context),
        )
      ],
    );
  }
}
