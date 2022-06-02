
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  AuthenticationService(this._firebaseAuth);

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<String?> signIn({ required String? email, required String? password }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(email: email!, password: password!);
      return 'Signed in';
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> signUp({ required String? email, required String? password }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(email: email!, password: password!);
      return 'Signed up';
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> signInAnonymously() async {
    try {
      await _firebaseAuth.signInAnonymously();
      return 'Signed up';
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> signInUsingGoogle() async {
    try {
      await _googleSignIn.signIn();
      return "Signed in using google";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> signOutUsingGoogle() async {
    try {
      await _googleSignIn.signOut();
      return "Signed out using google";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}