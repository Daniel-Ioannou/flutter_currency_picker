## [2.0.9] - 06 Apr 2022
* Add more currencies:
  - Seychellois rupee
  - Bosnia and Herzegovina convertible mark

## [2.0.8] - 24 Feb 2022
* Add the Syrian Pound 
* Fix `name` for South Korea

## [2.0.7] - 16 Jan 2022
* Fix `code` for Burundian Franc
* Fix `name` and  `name_plural`for Brazilian Real

## [2.0.6] - 24 Nov 2021
* Fix `name_plural` for Suriname Dollar

## [2.0.5] - 23 Aug 2021
* Fix `name_plural` for Euros

## [2.0.4] - 05 May 2021
* Implemented currency picker theme 
  ```Dart
   showCurrencyPicker(
      context: context,
      theme: CurrencyPickerThemeData(
         flagSize: 25,
         titleTextStyle: TextStyle(fontSize: 17),
         subtitleTextStyle: TextStyle(fontSize: 15, color: Theme.of(context).hintColor),
      ),
      onSelect: (Currency currency) {
         print('Select currency: ${currency.name}');
      },
   );
  ``` 
* Add `ScrollPhysics` parameter

## [2.0.3] - 20 Mar 2021
* Add toJson in currency model
* Fix incorrect currency symbols

## [2.0.2] - 18 Mar 2021

* Add more currency info:
  - Decimal digits 
  - Plural name
  - Symbol on left, 
  - Decimal separator
  - Thousands separator
* Remove Lithuanian Litas currency (was replaced by the Euro).
* Add more currencies:
  - Albanian Lek
  - Armenian Dram
  - Azerbaijani Manat
  - Burundian Franc
  - Botswanan Pula
  - Belarussian Ruble

## [2.0.1] - 12 Mar 2021

* Add `favorite` option.
  - Can be used to to show the favorite currencies at the top of the list.
  - It takes a list of currency code.
    ```Dart
    showCurrencyPicker(
      context: context,
      onSelect: (Currency currency) {
        print('Select currency: ${currency.name}');
      },
      favorite: <String> ['EUR', 'GBP', 'USD'],
    );
    ```
## [2.0.0] - 05 Mar 2021

 * Migrated to null safety
 
## [1.0.6] - 28 Jan 2021

 * Updating documentation
 
## [1.0.5] - 22 Jan 2021

 * Sort currencies list according to [most traded currencies](https://en.wikipedia.org/wiki/Template:Most_traded_currencies)

## [1.0.4] - 22 Dec 2020

 * `searchHint`: Option to customize hint of the search TextField
 * `showCurrencyName`: Option to show/hide the currency name
 * `showCurrencyCode`: Option to show/hide the currency code
```Dart
showCurrencyPicker(
   context: context,
   showFlag: true,
   searchHint: 'Search here',
   showCurrencyName: true,
   showCurrencyCode: true,
   onSelect: (Currency currency) {
      print('Select currency: ${currency.name}');
   },
);
```

Note: `showCurrencyCode` and `showCurrencyName` cannot be both false

## [1.0.3] - 09 Dec 2020

* Add option to show flag for each currency.
    ```Dart
    showCurrencyPicker(
      context: context,
      showFlag: true,
      onSelect: (Currency currency) {
        print('Select currency: ${currency.name}');
      },
    );
    ``` 

## [1.0.2] - 25 Nov 2020

* Deprecated showCurrencyListBottomSheet. Use `showCurrencyPicker` instead.
* Add currency filter option.
    - Can be used to uses filter the currencies list.
    - It takes a list of currency code.
      ```Dart
      showCurrencyPicker(
        context: context,
        onSelect: (Currency currency) {
          print('Select currency: ${currency.name}');
        },
        currencyFilter: <String> ['EUR', 'GBP', 'USD', 'AUD', 'CAD', 'JPY', 'HKD', 'CHF', 'SEK', 'ILS'],
      );
      ``` 

## [1.0.1] - 15 Nov 2020

* Implement search.
* Implement CurrencyService

## [1.0.0] - 31 Oct 2020

* Initial developers preview release.
