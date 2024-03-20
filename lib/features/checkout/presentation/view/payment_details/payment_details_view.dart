part of '../../../../../core/import/app_import.dart';

class PaymentDetailsView extends StatelessWidget {
  static const String nameRoute = "PaymentDetailsView";
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PaymentDetailsViewBody(),
      appBar: CustomAppbar(
        title: "Payment Details",
      ),
    );
  }
}
