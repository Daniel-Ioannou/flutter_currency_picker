class Currency {
  ///The currency code
  final String code;

  ///The currency name in English
  final String name;

  ///The currency symbol
  final String symbol;

  ///The currency flag code
  ///
  /// To get flag unicode(Emoji ) use [CurrencyUtils.countryCodeToEmoji]
  final String flag;

  ///The currency number
  final String number;

  Currency({required this.code, required this.name, required this.symbol, required this.flag, required this.number});

  Currency.from({required Map<String, dynamic> json})
      : code = json['code'],
        name = json['name'],
        symbol = json['symbol'],
        number = json['number'],
        flag = json['flag'];
}
