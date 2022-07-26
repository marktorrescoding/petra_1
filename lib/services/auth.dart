import 'package:firebase_auth/firebase_auth.dart';
import 'package:petras_1/models/username.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object based on Firebase user
  Userclass _userFromFirebaseUser(User user1) {
    //return user1 != null ?  Userclass(uid: user1.uid) : null;
    return Userclass(uid: user1.uid);
  }

  // auth change user stream
  Stream<Userclass> get user {
    return _auth
        .authStateChanges()
        .map((User? user) => _userFromFirebaseUser(user!));
    //.map(_userFromFirebaseUser);
  }

//sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user1 = result.user;
      return _userFromFirebaseUser(user1!);
    } catch (e) {
      print('bingo');

      print(e.toString());
      return null;
    }
  }
//sign in with email/pw

//register with email/pw

//sign out
Future signOut() async {
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
    }
}
}
