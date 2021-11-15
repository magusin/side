import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SideFirebaseUser {
  SideFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

SideFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SideFirebaseUser> sideFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<SideFirebaseUser>((user) => currentUser = SideFirebaseUser(user));
