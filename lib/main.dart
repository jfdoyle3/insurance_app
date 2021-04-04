import 'package:flutter/material.dart';
import 'package:insurance_app/account.dart';

import './client_name_card.dart';
import './account.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[50],
        appBar: AppBar(
          title: Text('Insurance App',),
          actions: <Widget>[
            PopupMenuButton<String>(
              onSelected: null,
              itemBuilder: (BuildContext context) {
                return {'Login','Logout', 'Settings'}.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],
          backgroundColor: Colors.teal[400],
        ),
        body: Column(
          children:[
           // ClientNameCard('Jim Doyle','123456','06/21'),
            AccountInfo(),

          ],
        ),
        ),
      );
  }
}