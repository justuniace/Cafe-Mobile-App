
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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

  Future<String?> signUp({ required String? email, required String? password, required String? displayName }) async {
    final db = FirebaseFirestore.instance.collection('users');

    try {
      await _firebaseAuth.createUserWithEmailAndPassword(email: email!, password: password!)
      .then((cred)async{
        await cred.user?.updateDisplayName(displayName);
        await db.doc(cred.user?.uid).set({
          'username': cred.user?.displayName,
          'email': cred.user?.email
        });
      });
      return 'Signed up';
    } on FirebaseAuthException catch (e) {
      print(e.message);
      return e.message;
    }
  }

  Future<String?> signInAnonymously() async {
    try {
      await _firebaseAuth.signInAnonymously();
      return 'Signed up';
    } on FirebaseAuthException catch (e) {
      print(e.message);
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