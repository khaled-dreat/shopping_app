part of '../../../../core/import/app_import.dart';

class CheckoutRepoImpl extends CheckoutRepo {
  final StripeService stripeService = StripeService();
  @override
  Future<dartz.Either<Failure, void>> mackPayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeService.mackPayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return dartz.right(null);
    } catch (e) {
      return dartz.left(ServerFailure(message: e.toString()));
    }
  }
}
