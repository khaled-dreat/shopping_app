import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:shopping_app/core/import/app_import.dart';

void main() {
  // * Stripe Initialized
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = StripeKey.publishableKey;
  // * Bloc Observer
  Bloc.observer = SimpleBlocObserver();
  // * Run App
  runApp(const AppStart());
}
