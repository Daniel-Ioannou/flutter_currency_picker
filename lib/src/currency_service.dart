import 'package:collection/collection.dart' show IterableExtension;
import 'package:currency_picker/src/currencies.dart';
import 'package:currency_picker/src/currency.dart';

class CurrencyService {
  final List<Currency> _currencies;

  CurrencyService()
      : _currencies = currencies
            .map((currency) => Currency.from(json: currency))
            .toList();

  ///Return list with all currencies
  List<Currency> getAll() {
    return _currencies;
  }

  ///Returns the first currency that mach the given code.
  Currency? findByCode(String code) {
    final uppercaseCode = code.toUpperCase();
    return _currencies
        .firstWhereOrNull((currency) => currency.code == uppercaseCode);
  }

  ///Returns the first currency that mach the given name.
  Currency? findByName(String name) {
    return _currencies.firstWhereOrNull((currency) => currency.name == name);
  }

  ///Returns the first currency that mach the given number.
  Currency? findByNumber(String number) {
    return _currencies
        .firstWhereOrNull((currency) => currency.number == number);
  }

  ///Returns a list with all the currencies that mach the given codes list.
  List<Currency> findCurrenciesByCode(List<String> codes) {
    final List<String> _codes =
        codes.map((code) => code.toUpperCase()).toList();
    final List<Currency> currencies = [];
    for (final code in _codes) {
      final Currency? currency = findByCode(code);
      if (currency != null) {
        currencies.add(currency);
      }
    }
    return currencies;
  }
}
