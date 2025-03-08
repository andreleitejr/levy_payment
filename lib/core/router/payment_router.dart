import 'package:auto_route/auto_route.dart';
import 'package:levy_payment/core/router/payment_router.gr.dart';

@AutoRouterConfig()
final class PaymentRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: PaymentRoute.page),
    AutoRoute(page: PaymentMethodRoute.page),
  ];
}