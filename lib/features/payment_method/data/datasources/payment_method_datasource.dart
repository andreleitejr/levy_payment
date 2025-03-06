import 'package:levy_payment/features/payment_method/data/models/payment_method_model.dart';

abstract class PaymentMethodDataSource {
  Future<List<PaymentMethodModel>> get();
}
