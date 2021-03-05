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
}
