import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy_payment/payment.dart';
import 'package:levy_shared_entities/shared_entities.dart';

final class PaymentNotifier extends StateNotifier<PaymentState> {
  final ProcessPaymentUseCase _usecase;
  final List<BusEntity> _buses;

  PaymentNotifier(this._usecase, this._buses) : super(PaymentState.loading());

  Future<void> init() async {
    try {
      state = PaymentState.initial(
        departureBus: _buses.first,
        returnBus: _buses.last,
      );
    } catch (e) {
      state = PaymentState.error('Failed to init payment: ${e.toString()}');
    }
  }

  Future<PaymentResult> processPayment({
    required ReservationEntity reservation,
    required BusEntity departureBus,
    required BusEntity returnBus,
    required PaymentMethodEntity method,
  }) async {
    try {
      state = PaymentState.loading();

      final updateReservation = ReservationModel(
        reservationId: reservation.reservationId,
        userId: reservation.userId,
        paymentId: reservation.paymentId,
        date: reservation.date,
        departureBus: departureBus as BusModel,
        returnBus: returnBus as BusModel,
      );

      // getIt.registerSingleton<ReservationEntity>(updateReservation);
      // getIt.registerSingleton<BusEntity>(departureBus, instanceName: 'departure');
      // getIt.registerSingleton<BusEntity>(returnBus, instanceName: 'return');

      return _usecase(
        reservation: updateReservation,
        method: method,
      );
    } catch (e) {
      state = PaymentState.error('Failed to process payment: ${e.toString()}');
      return PaymentResult.failed;
    }
  }

  void updatePaymentMethod(PaymentMethodEntity method) {
    state = state.copyWith(paymentMethod: method);
  }
}
