import 'dart:core';

class Client {
  final String _accountName;
  final String _accountNumber;
  final String _datePeriod;
  List<String> _policies = const['Car', 'Home', 'Life'];

  Client(this._accountName, this._accountNumber, this._datePeriod);

  String get accountName => _accountName;

  String get accountNumber => _accountNumber;

  String get datePeriod => _datePeriod;
}