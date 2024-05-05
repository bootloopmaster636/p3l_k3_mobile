import 'package:p3l_k3_mobile/data/api/auth_api.dart';
import 'package:p3l_k3_mobile/data/model/auth_model.dart';
import 'package:p3l_k3_mobile/data/model/user_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_logic.g.dart';

@riverpod
class AuthLogic extends _$AuthLogic {
  // TODO(bootloopmaster636): change this to get data from persistence
  @override
  Future<Auth> build() {
    return Future<Auth>(
      () => Auth(
        user: User(
          active: false,
          dateOfBirth: DateTime.now(),
          email: '',
          fullName: '',
          gender: '',
          id: 0,
          password: '',
          phoneNumber: '',
          roleId: 0,
        ),
        accessToken: '',
      ),
    );
  }

  Future<void> login(String email, String password) async {
    state = const AsyncLoading<Auth>();

    state = AsyncValue.guard(() async {
      return await loginApi(email, password);
    });
  }
}
