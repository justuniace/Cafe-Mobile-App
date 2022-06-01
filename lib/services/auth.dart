import 'package:coffee_app/models/userModel.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // CREATE USER OBJECT BASED ON THE CUSTOM MODEL
  UserModel? _user(User user) {
    return user != null ? UserModel( uid: user.uid ) : null;
  }

  Stream<UserModel?> get user {
    return _auth.authStateChanges()
    .map((User? user) => _user(user!));
  }

  // SIGN IN ANONYMOUSLY
  Future signInAnonymously() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _user(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

}