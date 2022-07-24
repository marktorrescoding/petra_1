import 'package:flutter/material.dart';
import 'package:petras_1/screens/authenticate/sign_in.dart';

class authenticate extends StatefulWidget {
  const authenticate({Key? key}) : super(key: key);

  @override
  State<authenticate> createState() => _authenticateState();
}

class _authenticateState extends State<authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SignIn()
    );
  }
}


