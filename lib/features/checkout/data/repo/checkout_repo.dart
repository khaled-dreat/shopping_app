part of "../../../../core/import/app_import.dart";

abstract class CheckoutRepo {
  Future<dartz.Either<Failure, void>> mackPayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}
