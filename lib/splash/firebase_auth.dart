import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
//import 'package:flutter_facebook_login/flutter_facebook_login.dart';



class AuthProvider {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<FirebaseUser> LoginWithEmail(String email, String password) async {
    AuthResult result = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    return result.user;
//    FirebaseUser user = result.user;

  }

  Future<FirebaseUser> getUser() {
    return _auth.currentUser();
  }

  Future SignWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      AuthResult res = await _auth.signInWithCredential(
          GoogleAuthProvider.getCredential(
              idToken: (await googleSignInAccount.authentication).idToken,
              accessToken:
              (await googleSignInAccount.authentication).accessToken));
      FirebaseUser user = res.user;
    }
  }


  Future<FirebaseUser> Sign_UP_WithEmail(String email, String password) async {
    final newUser = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    return newUser.user;
//    FirebaseUser user = result.user;

  }

}