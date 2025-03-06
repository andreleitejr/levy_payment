///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsEs implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEs _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsPaymentEs payment = _TranslationsPaymentEs._(_root);
	@override late final _TranslationsPaymentMethodEs paymentMethod = _TranslationsPaymentMethodEs._(_root);
}

// Path: payment
class _TranslationsPaymentEs implements TranslationsPaymentEn {
	_TranslationsPaymentEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPaymentHeaderEs header = _TranslationsPaymentHeaderEs._(_root);
	@override late final _TranslationsPaymentPaymentMethodEs paymentMethod = _TranslationsPaymentPaymentMethodEs._(_root);
	@override late final _TranslationsPaymentPriceInfoEs priceInfo = _TranslationsPaymentPriceInfoEs._(_root);
	@override late final _TranslationsPaymentButtonEs button = _TranslationsPaymentButtonEs._(_root);
}

// Path: paymentMethod
class _TranslationsPaymentMethodEs implements TranslationsPaymentMethodEn {
	_TranslationsPaymentMethodEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPaymentMethodHeaderEs header = _TranslationsPaymentMethodHeaderEs._(_root);
}

// Path: payment.header
class _TranslationsPaymentHeaderEs implements TranslationsPaymentHeaderEn {
	_TranslationsPaymentHeaderEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Comprar boletos';
}

// Path: payment.paymentMethod
class _TranslationsPaymentPaymentMethodEs implements TranslationsPaymentPaymentMethodEn {
	_TranslationsPaymentPaymentMethodEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Método de pago';
	@override late final _TranslationsPaymentPaymentMethodTextButtonEs textButton = _TranslationsPaymentPaymentMethodTextButtonEs._(_root);
}

// Path: payment.priceInfo
class _TranslationsPaymentPriceInfoEs implements TranslationsPaymentPriceInfoEn {
	_TranslationsPaymentPriceInfoEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Suscripción mensual';
	@override String get recurrence  => 'mes';
}

// Path: payment.button
class _TranslationsPaymentButtonEs implements TranslationsPaymentButtonEn {
	_TranslationsPaymentButtonEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Confirmar pago';
}

// Path: paymentMethod.header
class _TranslationsPaymentMethodHeaderEs implements TranslationsPaymentMethodHeaderEn {
	_TranslationsPaymentMethodHeaderEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seleccionar método de pago';
}

// Path: payment.paymentMethod.textButton
class _TranslationsPaymentPaymentMethodTextButtonEs implements TranslationsPaymentPaymentMethodTextButtonEn {
	_TranslationsPaymentPaymentMethodTextButtonEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modificar';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'payment.header.title': return 'Comprar boletos';
			case 'payment.paymentMethod.title': return 'Método de pago';
			case 'payment.paymentMethod.textButton.title': return 'Modificar';
			case 'payment.priceInfo.title': return 'Suscripción mensual';
			case 'payment.priceInfo.recurrence ': return 'mes';
			case 'payment.button.title': return 'Confirmar pago';
			case 'paymentMethod.header.title': return 'Seleccionar método de pago';
			default: return null;
		}
	}
}

