import 'package:injectable/injectable.dart';
import 'package:levy_payment/payment.dart';
import 'package:levy_shared_entities/shared_entities.dart';

@Injectable(as: PaymentRepository)
final class PaymentRepositoryImpl implements PaymentRepository {
  const PaymentRepositoryImpl(this._datasource);

  final PaymentDataSource _datasource;

  @override
  Future<PaymentResult> processPayment({
    required ReservationEntity reservation,
    required PaymentMethodEntity method,
  }) async {
    return _datasource.processPayment(
      reservation: reservation,
      method: method,
    );
  }
}
