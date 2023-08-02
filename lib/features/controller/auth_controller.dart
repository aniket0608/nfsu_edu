import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nfsu/apis/auth_api.dart';
import 'package:nfsu/core/util.dart';

final authControllerProvider =
    StateNotifierProvider<AuthController, bool>((ref) {
  return AuthController(
    authAPI: ref.watch(AuthAPIProvider),
  );
});

class AuthController extends StateNotifier<bool> {
  final AuthAPI _authAPI;
  AuthController({required AuthAPI authAPI})
      : _authAPI = authAPI,
        super(false); //is loading
  void signUp({
    required String name,
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    state = true;
    final res = await _authAPI.SignUp(
      name: name,
      email: email,
      password: password,
    );
    res.fold(
      (l) => showSnackBar(context, l.message),
      (r) => print(r.name),
    );
  }
}
