import 'package:logger/logger.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:p3l_k3_mobile/data/api/auth_api.dart';
import 'package:p3l_k3_mobile/data/api/user_api.dart';
import 'package:p3l_k3_mobile/data/local/token.dart';
import 'package:p3l_k3_mobile/data/model/auth_model.dart';
import 'package:p3l_k3_mobile/data/model/user_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_logic.g.dart';

@riverpod
class AuthLogic extends _$AuthLogic {
  @override
  Future<Auth> build() async {
    state = const AsyncLoading<Auth>();
    final String? token = await getToken();
    final User user =
        token == null || token == 'guest' || token.isEmpty ? generateEmptyUser() : await getUserData(token);

    return Auth(accessToken: token ?? '', user: user);
  }

  Future<void> login(String email, String password) async {
    state = const AsyncLoading<Auth>();

    try {
      state = const AsyncLoading<Auth>();
      final Auth auth = await loginApi(email, password);
      await setToken(auth.accessToken);
      await OneSignal.User.addTagWithKey('user_id', auth.user.id.toString());
      state = AsyncData<Auth>(auth);
    } catch (e) {
      state = AsyncError<Auth>(e, StackTrace.current);
      rethrow;
    }
  }

  void logout() {
    state = const AsyncLoading<Auth>();

    setToken('').then((_) {
      Logger().i('Token cleared');
    }).catchError((Object e) {
      Logger().e(e.toString());
    });

    state = AsyncData<Auth>(Auth(accessToken: '', user: generateEmptyUser()));
  }

  void loginAsGuest() {
    state = const AsyncLoading<Auth>();

    setToken('guest').then((_) {
      Logger().i('Token set as guest');
    }).catchError((Object e) {
      Logger().e(e.toString());
    });

    state = AsyncData<Auth>(Auth(accessToken: 'guest', user: generateEmptyUser()));
  }

  Future<void> register() async {
    // TODO(bootloopmaster636): make register if i have time
  }
}
