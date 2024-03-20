import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:shopping_app/core/import/app_import.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = StripeKey.publishableKey;
  //

  runApp(const AppStart());
}
