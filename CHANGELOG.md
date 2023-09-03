## 2.0.17
* Add more currencies:
  - Iraqi dinar
  - Zimbabwean dollar
* Fix Tunisian Dinars

## 2.0.16
* Add more currencies:
  - Tunisian dinar

## 2.0.15
* Add more currencies:
  - West African CFA franc
* Add parameter `useRootNavigator`
  ``` Dart
   showCurrencyPicker(
     context: context,
     useRootNavigator: true,
     onSelect: (Currency currency) => print('Select currency: ${currency.name}'),
   );
  ```
* Update dependencies
## 2.0.14
* Add more currencies:
  - Zambian Kwacha
  - Jordanian Dinar
  - Kyrgystani Som
* Remove currencies:
  - Croatia Kuna
## 2.0.13
* Add more currencies:
  - Algerian dinar
* Add `currencySignTextStyle`:
    ```Dart
       showCurrencyPicker(
         context: context,
         theme: CurrencyPickerThemeData(
           currencySignTextStyle: TextStyle(color: Colors.red, fontSize: 25),
         ),
         onSelect: (Currency currency) => print('Select currency: ${currency.name}'),
       );
    ```
## 2.0.12
* Add more currencies:
  - Congolese franc
  - Guatemalan quetzal
  - Myanmar Kyat

## 2.0.11
* Add more currencies:
  - Rwandan franc
  - Haitian gourde
* Add `showSearchField`: Option to show/hide the search TextField.
* Add option for bottom sheet height.
    ```Dart
       showCurrencyPicker(
         context: context,
         theme: CurrencyPickerThemeData(
           bottomSheetHeight: MediaQuery.of(context).size.height / 2,
         ),
         onSelect: (Currency currency) => print('Select currency: ${currency.name}'),
       );
    ```

## 2.0.10
* Add more currencies:
  - Cambodian riel
  - Central African CFA franc
* Remove duplicated currency BYN

## 2.0.9
* Add more currencies:
  - Seychellois rupee
  - Bosnia and Herzegovina convertible mark

## 2.0.8
* Add the Syrian Pound 
* Fix `name` for South Korea

## 2.0.7
* Fix `code` for Burundian Franc
* Fix `name` and  `name_plural`for Brazilian Real

## 2.0.6
* Fix `name_plural` for Suriname Dollar

## 2.0.5
* Fix `name_plural` for Euros

## 2.0.4
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

## 2.0.3
* Add toJson in currency model
* Fix incorrect currency symbols

## 2.0.2

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

## 2.0.1

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
## 2.0.0

 * Migrated to null safety
 
## 1.0.6

 * Updating documentation
 
## 1.0.5

 * Sort currencies list according to [most traded currencies](https://en.wikipedia.org/wiki/Template:Most_traded_currencies)

## 1.0.4

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

## 1.0.3

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

## 1.0.2

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

## 1.0.1

* Implement search.
* Implement CurrencyService

## 1.0.0

* Initial developers preview release.
