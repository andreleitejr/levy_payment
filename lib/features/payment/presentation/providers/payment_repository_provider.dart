import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy_payment/payment.dart';

final paymentRepositoryProvider = Provider<PaymentRepository>((ref) {
  return PaymentRepositoryImpl(ref.read(paymentDataSourceProvider));
});
