library currency_picker;

import 'package:flutter/material.dart';

import 'src/currency.dart';
import 'src/currency_list_bottom_sheet.dart' as currency_list;
import 'src/currency_picker_theme_data.dart';

export 'package:currency_picker/src/currency.dart';
export 'package:currency_picker/src/currency_picker_theme_data.dart';
export 'package:currency_picker/src/currency_service.dart';
export 'package:currency_picker/src/currency_utils.dart';

/// Show currency picker
///
///  `onSelect`: Called when a currency is select. The currency picker passes the new value to the callback (required)
///
///  `showFlag`: Shows flag for each currency. Default value true (optional).
///
///  `searchHint`: Option to customize hint of the search TextField (optional).
///
///  `showCurrencyName`: Option to show/hide the currency name, default value true (optional).
///
///  `showCurrencyCode`: Option to show/hide the currency code, default value true (optional).
///
///  `currencyFilter`: Can be used to uses filter the Currency list (optional).
///
///  `favorite`: The Currencies that will appear at the top of the list (optional).
///
///  `theme`: can be used to customizing the country list bottom sheet (optional).
///
///  `useRootNavigator`: ensures that the root navigator is used to
///  display the [BottomSheet] when set to `true`. This is useful in the case
///  that a modal [BottomSheet] needs to be displayed above all other content
///  but the caller is inside another [Navigator].
///
/// This example demonstrates how to use `showCurrencyPicker`
/// ```dart
/// showCurrencyPicker(
///    context: context,
///    showFlag: true,
///    showCurrencyName: true,
///    showCurrencyCode: true,
///    onSelect: (Currency currency) {
///       print('Select currency: ${currency.name}');
///    },
///    currencyFilter: <String>['EUR', 'GBP', 'USD', 'AUD', 'CAD', 'JPY', 'HKD', 'CHF', 'SEK', 'ILS'],
/// );
/// ```
void showCurrencyPicker({
  required BuildContext context,
  required ValueChanged<Currency> onSelect,
  List<String>? favorite,
  List<String>? currencyFilter,
  List<String>? excludedCurrencies,
  bool showSearchField = true,
  bool showFlag = true,
  bool showCurrencyName = true,
  bool showCurrencyCode = true,
  bool useRootNavigator = false,
  ScrollPhysics? physics,
  CurrencyPickerThemeData? theme,
  @Deprecated(
    'Use inputDecoration instead. '
        'This feature was deprecated after v2.0.18.',
  )
  String? searchHint,
}) {
  assert(
    showCurrencyName || showCurrencyCode,
    'showCurrencyName and showCurrencyCode cannot be both false',
  );
  assert(
    currencyFilter == null || excludedCurrencies == null,
    'currencyFilter and excludedCurrencies cannot be both used at the same time',
  );
  currency_list.showCurrencyListBottomSheet(
    context: context,
    onSelect: onSelect,
    showSearchField: showSearchField,
    searchHint: searchHint,
    showFlag: showFlag,
    showCurrencyName: showCurrencyName,
    showCurrencyCode: showCurrencyCode,
    useRootNavigator: useRootNavigator,
    favorite: favorite,
    currencyFilter: currencyFilter,
    excludedCurrencies: excludedCurrencies,
    theme: theme,
    physics: physics,
  );
}

@Deprecated(
  'Use showCurrencyPicker instead. '
  'This feature was deprecated after v1.0.2.',
)
void showCurrencyListBottomSheet({
  required BuildContext context,
  required ValueChanged<Currency> onSelect,
}) {
  showCurrencyPicker(
    context: context,
    onSelect: onSelect,
  );
}
