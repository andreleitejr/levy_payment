import 'package:levy_payment/features/payment/enums/payment_result.dart';
import 'package:levy_payment/features/payment_method/domain/entities/payment_method_entity.dart';
import 'package:levy_shared_entities/shared_entities.dart';

abstract class PaymentDataSource {
  Future<PaymentResult> processPayment({
    required ReservationEntity reservation,
    required PaymentMethodEntity method,
  });
}
