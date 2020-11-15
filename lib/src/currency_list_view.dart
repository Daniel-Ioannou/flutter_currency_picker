import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';

import 'currency.dart';

class CurrencyListView extends StatefulWidget {
  /// Called when a currency is select.
  ///
  /// The currency picker passes the new value to the callback.
  final ValueChanged<Currency> onSelect;

  const CurrencyListView({Key key, this.onSelect}) : super(key: key);
  @override
  _CurrencyListViewState createState() => _CurrencyListViewState();
}

class _CurrencyListViewState extends State<CurrencyListView> {
  final CurrencyService _currencyService = CurrencyService();
  List<Currency> _currencyList;

  @override
  void initState() {
    _currencyList = _currencyService.getAll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:
          _currencyList.map<Widget>((currency) => _listRow(currency)).toList(),
    );
  }

  Widget _listRow(Currency currency) {
    return Material(
      // Add Material Widget with transparent color
      // so the ripple effect of InkWell will show on tap
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          widget.onSelect(currency);
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 9.0, horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      currency.code,
                      style: const TextStyle(fontSize: 17),
                    ),
                    Text(
                      currency.name,
                      style: TextStyle(
                          fontSize: 15, color: Theme.of(context).hintColor),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  currency.symbol,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              // const SizedBox(width: 5),
            ],
          ),
        ),
      ),
    );
  }
}
