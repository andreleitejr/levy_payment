///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final TranslationsPaymentEn payment = TranslationsPaymentEn._(_root);
	late final TranslationsPaymentMethodEn paymentMethod = TranslationsPaymentMethodEn._(_root);
}

// Path: payment
class TranslationsPaymentEn {
	TranslationsPaymentEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPaymentHeaderEn header = TranslationsPaymentHeaderEn._(_root);
	late final TranslationsPaymentPaymentMethodEn paymentMethod = TranslationsPaymentPaymentMethodEn._(_root);
	late final TranslationsPaymentPriceInfoEn priceInfo = TranslationsPaymentPriceInfoEn._(_root);
	late final TranslationsPaymentButtonEn button = TranslationsPaymentButtonEn._(_root);
}

// Path: paymentMethod
class TranslationsPaymentMethodEn {
	TranslationsPaymentMethodEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPaymentMethodHeaderEn header = TranslationsPaymentMethodHeaderEn._(_root);
}

// Path: payment.header
class TranslationsPaymentHeaderEn {
	TranslationsPaymentHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Order tickets';
}

// Path: payment.paymentMethod
class TranslationsPaymentPaymentMethodEn {
	TranslationsPaymentPaymentMethodEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Payment Method';
	late final TranslationsPaymentPaymentMethodTextButtonEn textButton = TranslationsPaymentPaymentMethodTextButtonEn._(_root);
}

// Path: payment.priceInfo
class TranslationsPaymentPriceInfoEn {
	TranslationsPaymentPriceInfoEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Monthly subscription';
	String get recurrence  => 'month';
}

// Path: payment.button
class TranslationsPaymentButtonEn {
	TranslationsPaymentButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Confirm Payment';
}

// Path: paymentMethod.header
class TranslationsPaymentMethodHeaderEn {
	TranslationsPaymentMethodHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Select payment method';
}

// Path: payment.paymentMethod.textButton
class TranslationsPaymentPaymentMethodTextButtonEn {
	TranslationsPaymentPaymentMethodTextButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Modify';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'payment.header.title': return 'Order tickets';
			case 'payment.paymentMethod.title': return 'Payment Method';
			case 'payment.paymentMethod.textButton.title': return 'Modify';
			case 'payment.priceInfo.title': return 'Monthly subscription';
			case 'payment.priceInfo.recurrence ': return 'month';
			case 'payment.button.title': return 'Confirm Payment';
			case 'paymentMethod.header.title': return 'Select payment method';
			default: return null;
		}
	}
}

