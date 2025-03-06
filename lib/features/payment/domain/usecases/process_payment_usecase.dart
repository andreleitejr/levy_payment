import 'package:levy_payment/payment.dart';
import 'package:levy_shared_entities/entities.dart';

abstract class ProcessPaymentUseCase {
  Future<PaymentResult> call({
    required ReservationEntity reservation,
    required PaymentMethodEntity method,
  });
}
