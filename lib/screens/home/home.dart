import 'package:flutter/material.dart';
import 'package:petras_1/services/auth.dart';

class home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        title: Text('Climbin Home'),
        backgroundColor: Colors.brown[50],
        actions: <Widget>[
          FlatButton.icon(
              onPressed: ()async {
                await _auth.signOut();
              },
              icon: Icon(Icons.person),
      label: Text('logout')
          )
        ],
      ),
    );
    
  }
}
