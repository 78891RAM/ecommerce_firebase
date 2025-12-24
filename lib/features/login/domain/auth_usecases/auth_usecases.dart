import 'package:ecommerce_firebase/features/login/domain/auth_entity/auth_entity.dart';
import 'package:ecommerce_firebase/features/login/domain/auth_repository/auth_repository.dart';

class AuthUseCases {
  final AuthRepository repo;
  AuthUseCases(this.repo);

  Future<AuthEntity> call(String email, String password) {
    return repo.loginWithEmail(email, password);
  }

 Future<AuthEntity> signupWithEmail(String email, String password) {
    return repo.signupWithEmail(email, password);
  }

  Future<AuthEntity> loginWithGoogle() {
    return repo.loginWithGoogle();
  }

  Future<void> logout() {
    return repo.logout();
  }
}
