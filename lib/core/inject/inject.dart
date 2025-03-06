import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {}

@InjectableInit.microPackage(
  preferRelativeImports: false,
)

void configurePaymentDependencies() {}
