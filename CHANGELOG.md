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
