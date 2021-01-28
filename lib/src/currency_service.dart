import 'package:currency_picker/src/currencies.dart';
import 'package:currency_picker/src/currency.dart';

class CurrencyService {
  List<Currency> _currencies;

  CurrencyService() {
    loadCurrencies();
  }

  void loadCurrencies() {
    _currencies =
        currencies.map((currency) => Currency.from(json: currency)).toList();
  }

  ///Return list with all currencies
  List<Currency> getAll() {
    return _currencies;
  }

  ///Returns the first currency that mach the given code.
  Currency findByCode(String code) {
    final uppercaseCode = code.toUpperCase();
    return _currencies.firstWhere((currency) => currency.code == uppercaseCode,
        orElse: () => null);
  }

  ///Returns the first currency that mach the given name.
  Currency findByName(String name) {
    return _currencies.firstWhere((currency) => currency.name == name,
        orElse: () => null);
  }

  ///Returns the first currency that mach the given number.
  Currency findByNumber(String number) {
    return _currencies.firstWhere((currency) => currency.number == number,
        orElse: () => null);
  }
}
