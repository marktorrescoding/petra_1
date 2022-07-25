import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:petras_1/models/username.dart';
import 'package:petras_1/screens/authenticate/authenticate.dart';
import 'package:petras_1/screens/home/home.dart';
import 'package:provider/provider.dart';

class wrapper extends StatelessWidget {
  const wrapper({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<Userclass>(context);
    print(user);
    return authenticate();
  }
}
