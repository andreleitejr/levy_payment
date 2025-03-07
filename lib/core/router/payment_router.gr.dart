// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:levy_payment/features/payment/presentation/pages/payment_page.dart'
    as _i2;
import 'package:levy_payment/features/payment_method/presentation/pages/payment_method_page.dart'
    as _i1;
import 'package:levy_shared_entities/shared_entities.dart' as _i5;

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
class PaymentRoute extends _i3.PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    _i4.Key? key,
    required _i5.BusEntity departureBus,
    required _i5.BusEntity returnBus,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          PaymentRoute.name,
          args: PaymentRouteArgs(
            key: key,
            departureBus: departureBus,
            returnBus: returnBus,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentRouteArgs>();
      return _i2.PaymentPage(
        key: args.key,
        departureBus: args.departureBus,
        returnBus: args.returnBus,
      );
    },
  );
}

class PaymentRouteArgs {
  const PaymentRouteArgs({
    this.key,
    required this.departureBus,
    required this.returnBus,
  });

  final _i4.Key? key;

  final _i5.BusEntity departureBus;

  final _i5.BusEntity returnBus;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key, departureBus: $departureBus, returnBus: $returnBus}';
  }
}
