import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy_payment/payment.dart';
import 'package:levy_shared_entities/features/bus/providers/bus_provider.dart';

final paymentNotifierProvider = StateNotifierProvider<PaymentNotifier, PaymentState>((ref) {
  final buses = ref.read(busProvider);
  final paymentUseCase = ref.read(processPaymentUseCaseProvider);

  return PaymentNotifier(paymentUseCase, buses);
});
