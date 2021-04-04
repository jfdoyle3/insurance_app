import 'package:flutter/material.dart';

import './client_name_card.dart';
import './client.dart';
import './autoInfo.dart';

class AccountInfo extends StatefulWidget {
  @override
  _AccountInfoState createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: Text('Account Info'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.teal[100],
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children:[
                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: '\nJim Doyle',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 36)),
                      TextSpan(
                          text: '\n ',
                          style: TextStyle(fontSize: 16)),
                      TextSpan(
                          text:'\nPolicy Number: 6306952312',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    ],

                  ),
                ),
                IconButton(
                  icon: Icon(Icons.directions_car),
                  onPressed: (){
                    AutoInfo();
                  },

                ),
                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: (){
                    print('Home');
                  },
               ),
                IconButton(
                  icon: Icon(Icons.family_restroom),
                  onPressed: (){
                    print('Life');
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
