library currency_picker;

import 'package:flutter/material.dart';

import 'src/currency.dart';
import 'src/currency_list_bottom_sheet.dart' as currency_list;

export 'package:currency_picker/src/currency.dart';
export 'package:currency_picker/src/currency_service.dart';
export 'package:currency_picker/src/currency_utils.dart';

void showCurrencyPicker({
  @required BuildContext context,
  @required ValueChanged<Currency> onSelect,
  List<String> currencyFilter,
  String searchHint,
  bool showFlag = true,
}) {
  assert(context != null);
  assert(onSelect != null);
  currency_list.showCurrencyListBottomSheet(
    context: context,
    onSelect: onSelect,
    showFlag: showFlag,
    searchHint: searchHint,
    currencyFilter: currencyFilter,
  );
}

@Deprecated('Use showCurrencyPicker instead. '
    'This feature was deprecated after v1.0.2.')
void showCurrencyListBottomSheet({
  @required BuildContext context,
  @required ValueChanged<Currency> onSelect,
}) {
  showCurrencyPicker(
    context: context,
    onSelect: onSelect,
  );
}
