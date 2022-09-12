import 'package:mynotes/services/auth/auth_user.dart';

// Here will be no logic in abstruct class
// interface as abstruct class

abstract class AuthProvider {
  Future<void> initialize();
  AuthUser? get currentUser;
  // ability to return current auth user optionally. The sign ? indicates optional.
  Future<AuthUser> logIn({
    required String email,
    required String password,
  });
  Future<AuthUser> createUser({
    required String email,
    required String password,
  });
  Future<void> logOut();
  Future<void> sendEmailVerification();
}
