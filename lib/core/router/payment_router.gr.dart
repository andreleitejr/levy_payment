// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:levy_payment/features/payment/presentation/pages/payment_page.dart'
    as _i2;
import 'package:levy_payment/features/payment_method/presentation/pages/payment_method_page.dart'
    as _i1;

/// generated route for
/// [_i1.PaymentMethodPage]
class PaymentMethodRoute extends _i3.PageRouteInfo<void> {
  const PaymentMethodRoute({List<_i3.PageRouteInfo>? children})
      : super(
          PaymentMethodRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentMethodRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.PaymentMethodPage();
    },
  );
}

/// generated route for
/// [_i2.PaymentPage]
class PaymentRoute extends _i3.PageRouteInfo<void> {
  const PaymentRoute({List<_i3.PageRouteInfo>? children})
      : super(
          PaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.PaymentPage();
    },
  );
}
