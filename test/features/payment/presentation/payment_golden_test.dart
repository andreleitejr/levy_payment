import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:levy_payment/payment.dart';
import 'package:levy_shared_entities/shared_entities.dart';
import 'package:levy_test_utils/test_utils.dart';
import 'package:levy_theme/core/theme/theme.dart';
import 'package:mocktail/mocktail.dart';

final class PaymentDataSourceMock extends Mock implements PaymentDataSource {}

final class ProcessPaymentUseCaseMock extends Mock
    implements ProcessPaymentUseCase {}

void main() {
  late PaymentDataSourceMock paymentDataSourceMock;
  late ProcessPaymentUseCaseMock processPaymentUseCaseMock;

  late ReservationEntity reservationMock;
  late PaymentMethodEntity paymentMethodMock;

  setUpAll(() {
    paymentDataSourceMock = PaymentDataSourceMock();
    processPaymentUseCaseMock = ProcessPaymentUseCaseMock();

    reservationMock = ReservationModel.fromJson(ReservationMock.response);
    paymentMethodMock =
        PaymentMethodModel.fromJson(PaymentMethodMock.response.first);

    GetIt.instance
        .registerFactory<PaymentDataSource>(() => paymentDataSourceMock);
    GetIt.instance.registerFactory<ProcessPaymentUseCase>(
        () => processPaymentUseCaseMock);
  });

  group('Payment Page Golden Test', () {
    testWidgets('Payment Page Error', (tester) async {
      final errorMessage = 'Failed to load payments';

      when(() => processPaymentUseCaseMock(
          reservation: reservationMock,
          method: paymentMethodMock)).thenThrow(Exception(errorMessage));

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: ThemeErrorWidget(
          message: errorMessage,
        ),
        testName: 'PaymentError',
      );
    });

    testWidgets('Payment Page Success', (tester) async {
      final c = Completer<PaymentResult>();

      when(() => paymentDataSourceMock.processPayment(
            reservation: reservationMock,
            method: paymentMethodMock,
          )).thenAnswer((_) async {
        return c.future;
      });

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: PaymentPage(),
        testName: 'PaymentSuccess',
      );

      c.complete(PaymentResult.success);
    });
  });
}
