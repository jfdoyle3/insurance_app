import 'package:flutter/material.dart';

import './account_info.dart';
import './client.dart';

class ClientNameCard extends StatelessWidget {

  var clientOne=Client('Jim Doyle', '6306952312', '06/21');
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.teal[400].withAlpha(30),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AccountInfo()),
            );
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
                          text: '                                                                Car',
                          style: TextStyle(fontSize: 16)),
                      TextSpan(
                          text: '\n${clientOne.accountName}     ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      TextSpan(
                          text: 'Due: ${clientOne.datePeriod}                     Home',
                          style: TextStyle(fontSize: 16)),
                      TextSpan(
                          text: '\nPolicy Account: ${clientOne.accountNumber}             Life',
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
