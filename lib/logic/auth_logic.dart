import 'package:logger/logger.dart';
import 'package:p3l_k3_mobile/data/api/auth_api.dart';
import 'package:p3l_k3_mobile/data/model/auth_model.dart';
import 'package:p3l_k3_mobile/data/model/user_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_logic.g.dart';

@riverpod
class AuthLogic extends _$AuthLogic {
  @override
  Future<Auth> build() {
    // TODO(bootloopmaster636): change this to get data from persistence
    return Future<Auth>(
      () => Auth(
        user: generateEmptyUser(),
        accessToken: '',
      ),
    );
  }

  Future<void> login(String email, String password) async {
    state = const AsyncLoading<Auth>();

    try {
      final Auth auth = await loginApi(email, password);
      state = AsyncData<Auth>(auth);
    } catch (e) {
      state = AsyncError<Auth>(e, StackTrace.current);
      rethrow;
    }
  }

  void logout() {
    state = AsyncData<Auth>(Auth(accessToken: '', user: generateEmptyUser()));
  }

  Future<void> register() async {
    // TODO(bootloopmaster636): make register if i have time
  }
}
