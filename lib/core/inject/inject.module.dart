//@GeneratedMicroModule;LevyPaymentPackageModule;package:levy_payment/core/inject/inject.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:injectable/injectable.dart' as _i526;
import 'package:levy_payment/features/payment/data/datasources/payment_datasource_impl.dart'
    as _i427;
import 'package:levy_payment/features/payment/data/datasources/payment_datasource_mock.dart'
    as _i615;
import 'package:levy_payment/features/payment/data/repositories/payment_repository_impl.dart'
    as _i508;
import 'package:levy_payment/features/payment/domain/usecases/process_payment_usecase_impl.dart'
    as _i270;
import 'package:levy_payment/features/payment_method/data/datasources/payment_method_datasource.dart'
    as _i333;
import 'package:levy_payment/features/payment_method/data/datasources/payment_method_datasource_impl.dart'
    as _i610;
import 'package:levy_payment/features/payment_method/data/datasources/payment_method_datasource_mock.dart'
    as _i889;
import 'package:levy_payment/features/payment_method/data/repositories/payment_method_repository_impl.dart'
    as _i3;
import 'package:levy_payment/features/payment_method/domain/repositories/payment_method_repository.dart'
    as _i1041;
import 'package:levy_payment/features/payment_method/domain/usecases/get_payment_method_usecase.dart'
    as _i49;
import 'package:levy_payment/features/payment_method/domain/usecases/get_payment_method_usecase_impl.dart'
    as _i72;
import 'package:levy_payment/payment.dart' as _i314;

const String _impl = 'impl';
const String _mock = 'mock';

class LevyPaymentPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i333.PaymentMethodDataSource>(
      () => _i610.PaymentMethodDataSourceImpl(),
      registerFor: {_impl},
    );
    gh.factory<_i314.PaymentDataSource>(
      () => _i427.PaymentDataSourceImpl(),
      registerFor: {_impl},
    );
    gh.factory<_i314.PaymentDataSource>(
      () => _i615.PaymentDataSourceMock(),
      registerFor: {_mock},
    );
    gh.factory<_i333.PaymentMethodDataSource>(
      () => _i889.PaymentMethodDataSourceMock(),
      registerFor: {_mock},
    );
    gh.factory<_i1041.PaymentMethodRepository>(() =>
        _i3.PaymentMethodRepositoryImpl(gh<_i333.PaymentMethodDataSource>()));
    gh.factory<_i314.PaymentRepository>(
        () => _i508.PaymentRepositoryImpl(gh<_i314.PaymentDataSource>()));
    gh.factory<_i314.ProcessPaymentUseCase>(
        () => _i270.ProcessPaymentUseCaseImpl(gh<_i314.PaymentRepository>()));
    gh.factory<_i49.GetPaymentMethodUseCase>(() =>
        _i72.GetPaymentMethodUseCaseImpl(gh<_i1041.PaymentMethodRepository>()));
  }
}
