
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
