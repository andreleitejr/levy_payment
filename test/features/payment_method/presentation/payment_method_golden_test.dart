import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:levy_payment/payment.dart';
import 'package:levy_test_utils/test_utils.dart';
import 'package:levy_theme/core/theme/theme.dart';
import 'package:mocktail/mocktail.dart';

final class PaymentMethodDataSourceMock extends Mock implements PaymentMethodDataSource {}

final class GetPaymentMethodUseCaseMock extends Mock implements GetPaymentMethodUseCase {}

void main() {
  late PaymentMethodDataSourceMock paymentMethodDataSourceMock;
  late GetPaymentMethodUseCaseMock getPaymentMethodUseCaseMock;

  setUpAll(() {
    paymentMethodDataSourceMock = PaymentMethodDataSourceMock();
    getPaymentMethodUseCaseMock = GetPaymentMethodUseCaseMock();

    GetIt.instance.registerFactory<PaymentMethodDataSource>(() => paymentMethodDataSourceMock);
    GetIt.instance.registerFactory<GetPaymentMethodUseCase>(() => getPaymentMethodUseCaseMock);
  });

  group('PaymentMethod Page Golden Test', () {
    testWidgets('PaymentMethod Page Error', (tester) async {
      final errorMessage = 'Failed to load payment methods';

      when(() => getPaymentMethodUseCaseMock.call()).thenThrow(Exception(errorMessage));

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: ThemeErrorWidget(
          message: errorMessage,
        ),
        testName: 'PaymentMethodError',
      );
    });

    testWidgets('PaymentMethod Page Loading', (tester) async {
      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: PaymentMethodShimmer(onPop: () {}),
        testName: 'PaymentMethodLoading',
      );
    });

    testWidgets('PaymentMethod Page Success', (tester) async {
      final c = Completer<List<PaymentMethodModel>>();

      when(() => paymentMethodDataSourceMock.get()).thenAnswer((_) async {

        return c.future;
      });

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: PaymentMethodPage(),
        testName: 'PaymentMethodSuccess',
      );

      c.complete(PaymentMethodMock.response.map<PaymentMethodModel>((paymentMethod) {
        return PaymentMethodModel.fromJson(paymentMethod);
      }).toList());
    });
  });
}
