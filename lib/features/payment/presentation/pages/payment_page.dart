import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy_payment/payment.dart';
import 'package:levy_theme/core/theme/theme.dart';

@RoutePage()
final class PaymentPage extends ConsumerStatefulWidget {
  const PaymentPage({
    super.key,
  });

  @override
  ConsumerState<PaymentPage> createState() => _PaymentPageState();
}

final class _PaymentPageState extends ConsumerState<PaymentPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(paymentNotifierProvider.notifier).init(
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(paymentNotifierProvider);
    final notifier = ref.read(paymentNotifierProvider.notifier);

    return ThemeStateBuilder(
      state: state,
      loading: ThemeLoadingWidget(),
      success: _buildPaymentWidget(
        state: state,
        notifier: notifier,
      ),
      error: ThemeErrorWidget(
        message: state.errorMessage,
      ),
    );
  }

  Widget _buildPaymentWidget({
    required PaymentState state,
    required PaymentNotifier notifier,
  }) {
    final departureBus = state.departureBus;
    final returnBus = state.returnBus;

    if (departureBus != null && returnBus != null) {
      return PaymentWidget(
        reservation: state.reservation,
        departureBus: departureBus,
        returnBus: returnBus,
        paymentMethod: state.paymentMethod,
        onPop: () => context.router.back(),
        onPaymentMethodPressed: () => _onPaymentMethodPressed(notifier),
        onButtonPressed: () => _onButtonPressed(
          state: state,
          notifier: notifier,
        ),
      );
    }
    return SizedBox.shrink();
  }

  Future<void> _onPaymentMethodPressed(PaymentNotifier notifier) async {
    final paymentMethod = await context.router.pushNamed<PaymentMethodEntity>('/payment_method');

    if (paymentMethod != null) {
      notifier.updatePaymentMethod(paymentMethod);
    }
  }

  Future<void> _onButtonPressed({
    required PaymentState state,
    required PaymentNotifier notifier,
  }) async {
    final reservation = state.reservation;
    final paymentMethod = state.paymentMethod;
    final departureBus = state.departureBus;
    final returnBus = state.returnBus;

    if (paymentMethod != null && departureBus != null && returnBus != null) {
      final result = await notifier.processPayment(
        reservation: reservation,
        departureBus: departureBus,
        returnBus: returnBus,
        method: paymentMethod,
      );

      if (result == PaymentResult.success) {
        if(!mounted) return;
        context.router.replaceNamed('/home');
      }
    }
  }
}
