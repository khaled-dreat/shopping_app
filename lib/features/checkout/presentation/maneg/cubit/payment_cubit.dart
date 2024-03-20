part of '../../../../../core/import/app_import.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.checkoutRepo) : super(PaymentInitial());
  final CheckoutRepo checkoutRepo;
  Future mackPayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(PaymentLoading());
    var data = await checkoutRepo.mackPayment(
        paymentIntentInputModel: paymentIntentInputModel);

    data.fold(
      (failure) => emit(PaymentFailure(errMessage: failure.message)),
      (success) => emit(PaymentSuccess()),
    );
  }
}
