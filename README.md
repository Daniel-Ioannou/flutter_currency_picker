# Currency picker

[![pub package](https://img.shields.io/pub/v/currency_picker.svg)](https://pub.dev/packages/currency_picker)

A flutter package to select a currency from a list of currencies. 

<img height="600" alt="n1" src="https://raw.githubusercontent.com/Daniel-Ioannou/flutter_currency_picker/master/assets/ReadMe%20Screenshot.png">

## Getting Started

 Add the package to your pubspec.yaml:

 ```yaml
 currency_picker: ^2.0.21
 ```
 
 In your dart file, import the library:

 ```Dart
 import 'package:currency_picker/currency_picker.dart';
 ``` 
  Show currency picker using `showCurrencyPicker`:
```Dart
showCurrencyPicker(
   context: context,
   showFlag: true,
   showCurrencyName: true,
   showCurrencyCode: true,
   onSelect: (Currency currency) {
      print('Select currency: ${currency.name}');
   },
);
```

### Parameters:
* `onSelect`: Called when a currency is select. The currency picker passes the new value to the callback (required)
* `showFlag`: Shows flag for each currency. Default value `true` (optional). 
* `searchHint`: Option to customize hint of the search TextField (optional).
* `showCurrencyName`: Option to show/hide the currency name, default value `true` (optional).
* `showCurrencyCode`: Option to show/hide the currency code, default value `true` (optional).
* `showSearchField`: Option to show/hide the search TextField, default value `true` (optional).
* `currencyFilter`: Can be used to filter the Currency list (optional).
  ```Dart
   showCurrencyPicker(
      context: context,
      onSelect: (Currency currency) {
         print('Select currency: ${currency.name}');
      },
      currencyFilter: <String>['EUR', 'GBP', 'USD', 'AUD', 'CAD', 'JPY', 'HKD', 'CHF', 'SEK', 'ILS'],
   );
  ``` 
* `excludedCurrencies`: Can be used to exclude the Currency list (optional).
  ```Dart
   showCurrencyPicker(
      context: context,
      onSelect: (Currency currency) {
         print('Select currency: ${currency.name}');
      },
      excludedCurrencies: <String>['EUR', 'GBP', 'USD', 'AUD', 'CAD', 'JPY', 'HKD', 'CHF', 'SEK', 'ILS'],
   );
  ``` 
* `customCurrencies`: Can be used to add custom currencies (optional).
  ```Dart
   showCurrencyPicker(
      context: context,
      onSelect: (Currency currency) {
         print('Select currency: ${currency.name}');
      },
      customCurrencies: <Currency>[Currency.from(json)],
   );
  ``` 
* `favorite`: Can be used to show the favorite currencies at the top of the list (optional).
* `theme`: Can be used to customizing the currency list bottom sheet. (optional).
  ```Dart
   showCurrencyPicker(
     context: context,
     theme: CurrencyPickerThemeData(
       flagSize: 25,
       titleTextStyle: TextStyle(fontSize: 17),
       subtitleTextStyle: TextStyle(fontSize: 15, color: Theme.of(context).hintColor),
       bottomSheetHeight: MediaQuery.of(context).size.height / 2,
       //Optional. Styles the search field.
       inputDecoration: InputDecoration(
         labelText: 'Search',
         hintText: 'Start typing to search',
         prefixIcon: const Icon(Icons.search),
         border: OutlineInputBorder(
           borderSide: BorderSide(
             color: const Color(0xFF8C98A8).withOpacity(0.2),
           ),
         ),
       ),
     ),
     onSelect: (Currency currency) => print('Select currency: ${currency.name}'),
   );
  ``` 
## Contributions
Contributions of any kind are more than welcome! Feel free to fork and improve currency_picker in any way you want, make a pull request, or open an issue.
