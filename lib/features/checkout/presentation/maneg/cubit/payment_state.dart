part of "../../../../../core/import/app_import.dart";

@immutable
class PaymentState {}

class PaymentInitial extends PaymentState {}

class PaymentLoading extends PaymentState {}

class PaymentSuccess extends PaymentState {}

class PaymentFailure extends PaymentState {
  final String errMessage;

  PaymentFailure({required this.errMessage});
}
