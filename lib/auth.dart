import 'package:flutter_riverpod/flutter_riverpod.dart';

class Auth extends StateNotifier<bool> {
  // O construtor inicializa o estado com false, indicando que o usuário não está logado.
  Auth() : super(false);

  // Este método altera o estado para true, indicando que o usuário está logado.
  void login() {
    state = true;
  }

  // Este método altera o estado para false, indicando que o usuário não está logado.
  void logout() {
    state = false;
  }
}

final authProvider = StateNotifierProvider<Auth, bool>((ref) => Auth());