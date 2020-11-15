class Currency {
  final String code;
  final String name;
  final String symbol;
  final String flag;
  final String number;

  Currency({this.code, this.name, this.symbol, this.flag, this.number});

  Currency.from({Map<String, dynamic> json})
      : code = json['code'],
        name = json['name'],
        symbol = json['symbol'],
        number = json['number'],
        flag = json['flag'];
}
