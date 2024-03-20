part of "../../import/app_import.dart";

class ApiKey {
  static const String baseUrl = "https://api.stripe.com/v1/";
  static const String paymentIntents = "payment_intents";
  static const String ephemeralKeys = "ephemeral_keys";

  static String urlBulder(String value) {
    return baseUrl + value;
  }
}
