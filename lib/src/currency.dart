class Currency {
  final String code;
  final String name;
  final String symbol;
  final String flag;

  Currency({this.code, this.name, this.symbol, this.flag});

  Currency.from({Map<String, dynamic> json})
      : code = json['code'],
        name = json['name'],
        symbol = json['symbol'],
        flag = json['flag'];
}
