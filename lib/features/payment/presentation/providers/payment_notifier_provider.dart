
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy_payment/payment.dart';

final paymentNotifierProvider = StateNotifierProvider<PaymentNotifier, PaymentState>((ref) {
  return PaymentNotifier(ref.read(processPaymentUseCaseProvider));
});
