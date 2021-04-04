import 'package:flutter/material.dart';

import './client_name_card.dart';
import './client.dart';

class AccountInfo extends StatefulWidget {

  @override
  _AccountInfoState createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Info') ,
      ),
      body: Text('ll'),
    );
  }
}
