import 'package:ecommerce_firebase/features/login/domain/auth_entity/auth_entity.dart';

abstract class AuthRepository {
  Future<AuthEntity> loginWithEmail(String email, String password);
  Future<AuthEntity> signupWithEmail(String email, String password);
  Future<AuthEntity> loginWithGoogle();

  Future<void> logout();
}
