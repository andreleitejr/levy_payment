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
class TranslationsDe implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsDe _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsPaymentDe payment = _TranslationsPaymentDe._(_root);
	@override late final _TranslationsPaymentMethodDe paymentMethod = _TranslationsPaymentMethodDe._(_root);
}

// Path: payment
class _TranslationsPaymentDe implements TranslationsPaymentEn {
	_TranslationsPaymentDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPaymentHeaderDe header = _TranslationsPaymentHeaderDe._(_root);
	@override late final _TranslationsPaymentPaymentMethodDe paymentMethod = _TranslationsPaymentPaymentMethodDe._(_root);
	@override late final _TranslationsPaymentPriceInfoDe priceInfo = _TranslationsPaymentPriceInfoDe._(_root);
	@override late final _TranslationsPaymentButtonDe button = _TranslationsPaymentButtonDe._(_root);
}

// Path: paymentMethod
class _TranslationsPaymentMethodDe implements TranslationsPaymentMethodEn {
	_TranslationsPaymentMethodDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPaymentMethodHeaderDe header = _TranslationsPaymentMethodHeaderDe._(_root);
}

// Path: payment.header
class _TranslationsPaymentHeaderDe implements TranslationsPaymentHeaderEn {
	_TranslationsPaymentHeaderDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tickets bestellen';
}

// Path: payment.paymentMethod
class _TranslationsPaymentPaymentMethodDe implements TranslationsPaymentPaymentMethodEn {
	_TranslationsPaymentPaymentMethodDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zahlungsmethode';
	@override late final _TranslationsPaymentPaymentMethodTextButtonDe textButton = _TranslationsPaymentPaymentMethodTextButtonDe._(_root);
}

// Path: payment.priceInfo
class _TranslationsPaymentPriceInfoDe implements TranslationsPaymentPriceInfoEn {
	_TranslationsPaymentPriceInfoDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Monatliches Abonnement';
	@override String get recurrence  => 'Monat';
}

// Path: payment.button
class _TranslationsPaymentButtonDe implements TranslationsPaymentButtonEn {
	_TranslationsPaymentButtonDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zahlung bestätigen';
}

// Path: paymentMethod.header
class _TranslationsPaymentMethodHeaderDe implements TranslationsPaymentMethodHeaderEn {
	_TranslationsPaymentMethodHeaderDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zahlungsmethode auswählen';
}

// Path: payment.paymentMethod.textButton
class _TranslationsPaymentPaymentMethodTextButtonDe implements TranslationsPaymentPaymentMethodTextButtonEn {
	_TranslationsPaymentPaymentMethodTextButtonDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ändern';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsDe {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'payment.header.title': return 'Tickets bestellen';
			case 'payment.paymentMethod.title': return 'Zahlungsmethode';
			case 'payment.paymentMethod.textButton.title': return 'Ändern';
			case 'payment.priceInfo.title': return 'Monatliches Abonnement';
			case 'payment.priceInfo.recurrence ': return 'Monat';
			case 'payment.button.title': return 'Zahlung bestätigen';
			case 'paymentMethod.header.title': return 'Zahlungsmethode auswählen';
			default: return null;
		}
	}
}

