part of '../../../../../../core/import/app_import.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.title, required this.value});

  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppTheme.h5(context),
        ),
        const Spacer(),
        Text(
          value,
          textAlign: TextAlign.center,
          style: AppTheme.h5(context),
        )
      ],
    );
  }
}
