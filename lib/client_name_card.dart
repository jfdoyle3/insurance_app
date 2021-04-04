import 'package:flutter/material.dart';
import './account.dart';

class ClientNameCard extends StatelessWidget {
  final String _accountName;
  final String _accountNumber;
  final String _datePeriod;
  List<String> _policies= const['Car','Home','Life'];


  ClientNameCard(this._accountName, this._accountNumber,this._datePeriod);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.teal[400].withAlpha(30),
          onTap: () {
            AccountInfo();
          },
          child: Container(
            width: 350,
            height: 100,
            child: Row(
              children: [
                Icon(Icons.account_circle_rounded,
                    color: Colors.teal[400], size: 40),
                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: '                                                                  Car',
                          style: TextStyle(fontSize: 16)),
                      TextSpan(
                          text: '\n$_accountName     ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      TextSpan(
                          text: 'Date Due: $_datePeriod              Home',
                          style: TextStyle(fontSize: 16)),
                      TextSpan(
                          text: '\nacct: $_accountNumber                                           Life',
                          style: TextStyle(fontSize: 16)),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
