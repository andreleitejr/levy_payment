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
class TranslationsPt implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.pt,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pt>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsPt _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsPaymentPt payment = _TranslationsPaymentPt._(_root);
	@override late final _TranslationsPaymentMethodPt paymentMethod = _TranslationsPaymentMethodPt._(_root);
}

// Path: payment
class _TranslationsPaymentPt implements TranslationsPaymentEn {
	_TranslationsPaymentPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPaymentHeaderPt header = _TranslationsPaymentHeaderPt._(_root);
	@override late final _TranslationsPaymentPaymentMethodPt paymentMethod = _TranslationsPaymentPaymentMethodPt._(_root);
	@override late final _TranslationsPaymentPriceInfoPt priceInfo = _TranslationsPaymentPriceInfoPt._(_root);
	@override late final _TranslationsPaymentButtonPt button = _TranslationsPaymentButtonPt._(_root);
}

// Path: paymentMethod
class _TranslationsPaymentMethodPt implements TranslationsPaymentMethodEn {
	_TranslationsPaymentMethodPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPaymentMethodHeaderPt header = _TranslationsPaymentMethodHeaderPt._(_root);
}

// Path: payment.header
class _TranslationsPaymentHeaderPt implements TranslationsPaymentHeaderEn {
	_TranslationsPaymentHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Comprar Bilhetes';
}

// Path: payment.paymentMethod
class _TranslationsPaymentPaymentMethodPt implements TranslationsPaymentPaymentMethodEn {
	_TranslationsPaymentPaymentMethodPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Método de Pagamento';
	@override late final _TranslationsPaymentPaymentMethodTextButtonPt textButton = _TranslationsPaymentPaymentMethodTextButtonPt._(_root);
}

// Path: payment.priceInfo
class _TranslationsPaymentPriceInfoPt implements TranslationsPaymentPriceInfoEn {
	_TranslationsPaymentPriceInfoPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Assinatura Mensal';
	@override String get recurrence  => 'mês';
}

// Path: payment.button
class _TranslationsPaymentButtonPt implements TranslationsPaymentButtonEn {
	_TranslationsPaymentButtonPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Confirmar Pagamento';
}

// Path: paymentMethod.header
class _TranslationsPaymentMethodHeaderPt implements TranslationsPaymentMethodHeaderEn {
	_TranslationsPaymentMethodHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Selecionar Método de Pagamento';
}

// Path: payment.paymentMethod.textButton
class _TranslationsPaymentPaymentMethodTextButtonPt implements TranslationsPaymentPaymentMethodTextButtonEn {
	_TranslationsPaymentPaymentMethodTextButtonPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modificar';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsPt {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'payment.header.title': return 'Comprar Bilhetes';
			case 'payment.paymentMethod.title': return 'Método de Pagamento';
			case 'payment.paymentMethod.textButton.title': return 'Modificar';
			case 'payment.priceInfo.title': return 'Assinatura Mensal';
			case 'payment.priceInfo.recurrence ': return 'mês';
			case 'payment.button.title': return 'Confirmar Pagamento';
			case 'paymentMethod.header.title': return 'Selecionar Método de Pagamento';
			default: return null;
		}
	}
}

