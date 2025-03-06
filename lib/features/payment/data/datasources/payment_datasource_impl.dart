import 'package:injectable/injectable.dart';
import 'package:levy_core/core.dart';
import 'package:levy_payment/payment.dart';
import 'package:levy_shared_entities/entities.dart';

@Injectable(as: PaymentDataSource, env: [InjectEnv.impl])
final class PaymentDataSourceImpl implements PaymentDataSource {
  @override
  Future<PaymentResult> processPayment({
    required ReservationEntity reservation,
    required PaymentMethodEntity method,
  }) async {
    return PaymentResult.success;
  }
}
