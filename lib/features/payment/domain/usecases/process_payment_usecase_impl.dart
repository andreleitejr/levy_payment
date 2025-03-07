import 'package:injectable/injectable.dart';
import 'package:levy_payment/payment.dart';
import 'package:levy_shared_entities/shared_entities.dart';

@Injectable(as: ProcessPaymentUseCase)
final class ProcessPaymentUseCaseImpl implements ProcessPaymentUseCase {
  const ProcessPaymentUseCaseImpl(this._repository);

  final PaymentRepository _repository;

  @override
  Future<PaymentResult> call({
    required ReservationEntity reservation,
    required PaymentMethodEntity method,
  }) async {
    return _repository.processPayment(
      reservation: reservation,
      method: method,
    );
  }
}
