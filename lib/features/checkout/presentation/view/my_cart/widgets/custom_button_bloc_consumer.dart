part of '../../../../../../core/import/app_import.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          AppRoute.goReplace(context, ThankYouView.nameRoute);
        }
        if (state is PaymentFailure) {
          Navigator.pop(context);
          dev.log(state.errMessage);
          AppToast.toast(state.errMessage);
        }
      },
      builder: (context, state) {
        return CustomButton(
          onTap: () {
            PaymentIntentInputModel paymentIntentInputModel =
                PaymentIntentInputModel(
                    amount: "100",
                    currency: StripeKey.currency,
                    customerID: "cus_Pm670PjYKgdp3L");
            BlocProvider.of<PaymentCubit>(context)
                .mackPayment(paymentIntentInputModel: paymentIntentInputModel);
          },
          isLoading: state is PaymentLoading ? true : false,
          text: "Continue",
        );
      },
    );
  }
}
