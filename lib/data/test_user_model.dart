import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_user_model.freezed.dart';

@freezed
class TestUser with _$TestUser {
  const factory TestUser({
    required String name,
    required String email,
    required List<String> alamat,
    required int poin,
    required double saldo,
    required String profilePictURL,
  }) = _TestUser;
}

const TestUser exampleUser = TestUser(
  name: 'John Doe',
  email: 'doe@bruh.com',
  alamat: <String>['somewhere in planet earth', 'somewhere in the hollow earth'],
  poin: 100,
  saldo: 34000,
  profilePictURL: 'https://api.dicebear.com/8.x/adventurer/png?seed=Abby',
);
