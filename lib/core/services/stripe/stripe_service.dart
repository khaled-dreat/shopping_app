part of '../../import/app_import.dart';

class StripeService {
  final ApiService apiService = ApiService();
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
        body: paymentIntentInputModel.toJson(),
        contentType: Headers.formUrlEncodedContentType,
        url: ApiKey.urlBulder(ApiKey.paymentIntents),
        token: StripeKey.secretKey);
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future initPaymentSheet(
      {required InitiPaymentSheetInputModel
          initiPaymentSheetInputModel}) async {
    await stripe.Stripe.instance.initPaymentSheet(
        paymentSheetParameters: stripe.SetupPaymentSheetParameters(
            paymentIntentClientSecret: initiPaymentSheetInputModel.clientSecret,
            customerEphemeralKeySecret:
                initiPaymentSheetInputModel.ephemeralKeySecret,
            customerId: initiPaymentSheetInputModel.customerId,
            merchantDisplayName: StripeKey.merchantDisplayName));
  }

  Future<EphemeralKeyModel> creatEphemeralKey(
      {required String customerID}) async {
    var response = await apiService.post(
        body: {"customer": customerID},
        url: ApiKey.urlBulder(ApiKey.ephemeralKeys),
        contentType: Headers.formUrlEncodedContentType,
        token: StripeKey.secretKey,
        headers: {
          'Authorization': "Bearer ${StripeKey.secretKey}",
          "Stripe-Version": "2023-10-16"
        });

    var ephermeralKey = EphemeralKeyModel.fromJson(response.data);
    return ephermeralKey;
  }

  Future displayPaymentSheet() async {
    await stripe.Stripe.instance.presentPaymentSheet();
  }

  Future mackPayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    PaymentIntentModel paymentIntentModel =
        await createPaymentIntent(paymentIntentInputModel);
    EphemeralKeyModel ephemeralKeyModel =
        await creatEphemeralKey(customerID: paymentIntentInputModel.customerID);
    InitiPaymentSheetInputModel initiPaymentSheetInputModel =
        InitiPaymentSheetInputModel(
            clientSecret: paymentIntentModel.clientSecret!,
            customerId: paymentIntentInputModel.customerID,
            ephemeralKeySecret: ephemeralKeyModel.secret!);

    await initPaymentSheet(
        initiPaymentSheetInputModel: initiPaymentSheetInputModel);
    await displayPaymentSheet();
  }
}
