import 'package:levy_payment/features/payment_method/domain/entities/payment_method_entity.dart';

abstract class PaymentMethodRepository {
  Future<List<PaymentMethodEntity>> get();
}
