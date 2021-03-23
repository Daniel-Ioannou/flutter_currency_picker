import 'package:currency_picker/src/currency.dart';
import 'package:flutter/material.dart';

import 'currency_list_view.dart';

void showCurrencyListBottomSheet({
  required BuildContext context,
  required ValueChanged<Currency> onSelect,
  List<String>? favorite,
  List<String>? currencyFilter,
  String? searchHint,
  bool showFlag = true,
  bool showCurrencyName = true,
  bool showCurrencyCode = true,
  ShapeBorder? shape,
  Color? backgroundColor,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: shape,
    backgroundColor: backgroundColor,
    builder: (_) => _builder(
      context,
      onSelect,
      favorite,
      currencyFilter,
      searchHint,
      showFlag,
      showCurrencyName,
      showCurrencyCode,
    ),
  );
}

Widget _builder(
  BuildContext context,
  ValueChanged<Currency> onSelect,
  List<String>? favorite,
  List<String>? currencyFilter,
  String? searchHint,
  bool showFlag,
  bool showCurrencyName,
  bool showCurrencyCode,
) {

  return DraggableScrollableSheet(
      expand: false,
      maxChildSize: 0.8,
      builder: (BuildContext context, ScrollController controller) {
        return CurrencyListView(
          onSelect: onSelect,
          searchHint: searchHint,
          showFlag: showFlag,
          showCurrencyName: showCurrencyName,
          showCurrencyCode: showCurrencyCode,
          favorite: favorite,
          currencyFilter: currencyFilter,
          controller: controller,
        );
      });
}
