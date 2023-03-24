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
  InputDecoration? searchFieldDecoration,
  bool showSearchField = true,
  bool showFlag = true,
  bool showCurrencyName = true,
  bool showCurrencyCode = true,
  bool useRootNavigator = false,
  ScrollPhysics? physics,
  CurrencyPickerThemeData? theme,
}) {
  final ShapeBorder shape = theme?.shape ??
      const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      );

  showModalBottomSheet<dynamic>(
    context: context,
    isScrollControlled: true,
    shape: shape,
    useRootNavigator: useRootNavigator,
    backgroundColor: theme?.backgroundColor,
    builder: (_) => _builder(
      context,
      onSelect,
      favorite,
      currencyFilter,
      searchHint,
      searchFieldDecoration,
      physics,
      showSearchField,
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
  InputDecoration? searchFieldDecoration,
  ScrollPhysics? physics,
  bool showSearchField,
  bool showFlag,
  bool showCurrencyName,
  bool showCurrencyCode,
  CurrencyPickerThemeData? theme,
) {
  final device = MediaQuery.of(context).size.height;
  final statusBarHeight = MediaQuery.of(context).padding.top;
  final height = theme?.bottomSheetHeight ??
      device - (statusBarHeight + (kToolbarHeight / 1.5));
  return SizedBox(
    height: height,
    child: CurrencyListView(
      onSelect: onSelect,
      searchHint: searchHint,
      searchFieldDecoration: searchFieldDecoration,
      showSearchField: showSearchField,
      showFlag: showFlag,
      showCurrencyName: showCurrencyName,
      showCurrencyCode: showCurrencyCode,
      favorite: favorite,
      currencyFilter: currencyFilter,
      physics: physics,
      theme: theme,
    ),
  );
}
