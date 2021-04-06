import 'dart:core';

class Client {
  final String _accountName;
  final String _accountNumber;

  Client(this._accountName,this._accountNumber);

  String get accountName => _accountName;

  String get accountNumber => _accountNumber;

}