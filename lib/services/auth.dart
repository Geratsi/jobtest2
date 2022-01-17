
import 'package:jobtest2/domain/authuser.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  final FirebaseAuth _fAuth = FirebaseAuth.instance;

  Future<AuthUser?> signInWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential result = await _fAuth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return AuthUser.fromFirebase(user);
    }on FirebaseException catch(error){
      return null;
    }
  }
  Future logOut() async {
    await _fAuth.signOut();
  }

  Stream<AuthUser?> get currentUser{
    return _fAuth.authStateChanges()
        .map((User? user) => user != null ? AuthUser.fromFirebase(user) : null);
  }

}