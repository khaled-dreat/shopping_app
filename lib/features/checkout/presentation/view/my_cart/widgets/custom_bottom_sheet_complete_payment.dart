part of "../../../../../../core/import/app_import.dart";

void customBottomSheetCompletePayment(BuildContext context) {
  showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      builder: (context) {
        return BlocProvider(
          create: (context) => PaymentCubit(CheckoutRepoImpl()),
          child: const PaymentMethodsBottomSheet(),
        );
      });
}
