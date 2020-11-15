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

  List<Currency> getAll() {
    return _currencies;
  }

  Currency findByCode(String code) {
    final uppercaseCode = code.toUpperCase();
    return _currencies.firstWhere((currency) => currency.code == uppercaseCode,
        orElse: () => null);
  }

  Currency findByName(String name) {
    return _currencies.firstWhere((currency) => currency.name == name,
        orElse: () => null);
  }

  Currency findByNumber(String number) {
    return _currencies.firstWhere((currency) => currency.number == number,
        orElse: () => null);
  }
}
