import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:petras_1/screens/authenticate/authenticate.dart';
import 'package:petras_1/screens/home/home.dart';

class wrapper extends StatelessWidget {
  const wrapper({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Text('SomethingWentWrong()');
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return authenticate();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Text('Loading()');
      },
    );
  }
}
