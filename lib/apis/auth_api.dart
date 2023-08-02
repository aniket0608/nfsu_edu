import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:nfsu/core/core.dart';
import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as model;
import 'package:nfsu/core/provider.dart';

final AuthAPIProvider = Provider((ref) {
  final account = ref.watch(appwriteAccountProvider);
  return AuthAPI(account: account);
});

abstract class IAuthAPI {
  FutureEither<model.Account> SignUp({
    required String name,
    required String email,
    required String password,
  });
}

class AuthAPI implements IAuthAPI {
  final Account _Account;

  AuthAPI({required Account account}) : _Account = account;

  @override
  FutureEither<model.Account> SignUp({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final Account = await _Account.create(
          userId: ID.unique(), email: email, password: password);
      return right(Account);
    } on AppwriteException catch (e, stackTrace) {
      return left(
        Failure(message: e.toString(), stackTrace: StackTrace.current),
      );
    } catch (e, stackTrace) {
      return left(
        Failure(message: e.toString(), stackTrace: StackTrace.current),
      );
    }
  }
}
