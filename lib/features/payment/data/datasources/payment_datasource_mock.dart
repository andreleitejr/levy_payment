import 'package:injectable/injectable.dart';
import 'package:levy_core/core.dart';
import 'package:levy_payment/payment.dart';
import 'package:levy_shared_entities/shared_entities.dart';

@Injectable(as: PaymentDataSource, env: [InjectEnv.mock])
final class PaymentDataSourceMock implements PaymentDataSource {
  @override
  Future<PaymentResult> processPayment({
    required ReservationEntity reservation,
    required PaymentMethodEntity method,
  }) async {
    await Future.delayed(const Duration(seconds: 2));
    return PaymentResult.success;
  }
}
