import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign in anon
  Future signInAnon() async {
    try {
       UserCredential result = await _auth.signInAnonymously();
       User? user1 = result.user;
      return user1;
    } catch (e) {
print(e.toString());
return null;
    }
  }
//sign in with email/pw

//register with email/pw

//sign out
}