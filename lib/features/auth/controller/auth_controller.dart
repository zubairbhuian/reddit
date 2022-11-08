import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit/features/auth/repository/auth_repository.dart';


final authControllerProvider = Provider(
    (ref) => AuthController(authController: ref.read(AuthRepoProvider)));

class AuthController {
  final AuthRepository _authRepository;

  AuthController({required AuthRepository authController})
      : _authRepository = authController;

  void signInWithGoogle() {
    _authRepository.signInWithGoogle();
  }
}
