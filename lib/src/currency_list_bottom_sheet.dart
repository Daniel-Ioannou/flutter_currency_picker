import 'package:flutter/material.dart';

import 'currency.dart';
import 'currency_list_view.dart';
import 'currency_picker_theme_data.dart';

void showCurrencyListBottomSheet({
  required BuildContext context,
  required ValueChanged<Currency> onSelect,
  List<String>? favorite,
  List<String>? currencyFilter,
  String? searchHint,
  bool showFlag = true,
  bool showCurrencyName = true,
  bool showCurrencyCode = true,
  ScrollPhysics? physics,
  CurrencyPickerThemeData? theme,
}) {
  final ShapeBorder shape = theme?.shape ??
      const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      );

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: shape,
    backgroundColor: theme?.backgroundColor,
    builder: (_) => _builder(
      context,
      onSelect,
      favorite,
      currencyFilter,
      searchHint,
      physics,
      showFlag,
      showCurrencyName,
      showCurrencyCode,
      theme,
    ),
  );
}

Widget _builder(
  BuildContext context,
  ValueChanged<Currency> onSelect,
  List<String>? favorite,
  List<String>? currencyFilter,
  String? searchHint,
  ScrollPhysics? physics,
  bool showFlag,
  bool showCurrencyName,
  bool showCurrencyCode,
  CurrencyPickerThemeData? theme,
) {
  return DraggableScrollableSheet(
    expand: false,
    maxChildSize: 0.9,
    initialChildSize: 0.9,
    minChildSize: 0.8,
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
        physics: physics,
        theme: theme,
      );
    },
  );
}
