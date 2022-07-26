import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:petras_1/screens/home/home.dart';
import 'package:petras_1/screens/wrapper.dart';
import 'package:petras_1/services/auth.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'models/username.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const MyApp());
}
// void main() async {
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    // return MaterialApp(
    //   home: home(),
    // );

     return StreamProvider<Userclass>.value(
       value: AuthService().user,
       initialData: Userclass(uid: ''),
       child: MaterialApp(
         home: wrapper(),
       ),
     );
  }
}
