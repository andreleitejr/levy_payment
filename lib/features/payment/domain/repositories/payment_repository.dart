import 'package:levy_payment/payment.dart';
import 'package:levy_shared_entities/entities.dart';

abstract class PaymentRepository {
  Future<PaymentResult> processPayment({
    required ReservationEntity reservation,
    required PaymentMethodEntity method,
  });
}
