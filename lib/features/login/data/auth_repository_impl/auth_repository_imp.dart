import 'package:ecommerce_firebase/features/login/data/models/auth_model.dart';
import 'package:ecommerce_firebase/features/login/domain/auth_entity/auth_entity.dart';
import 'package:ecommerce_firebase/features/login/domain/auth_repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:uuid/uuid.dart';

class AuthRepositoryImp implements AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Future<AuthEntity> loginWithEmail(String email, String password) async {
    try {
      final result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = result.user;
      return user as AuthEntity;
    } catch (e) {
      return Future.error("Login failed: $e");
    }
  }

  @override
  Future<AuthEntity> loginWithGoogle() {
    // TODO: implement loginWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<AuthEntity> signupWithEmail(String email, String password) {
    // TODO: implement signupWithEmail
    throw UnimplementedError();
  }
}
