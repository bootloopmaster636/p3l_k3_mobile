import 'package:p3l_k3_mobile/data/api/general_info_api.dart';
import 'package:p3l_k3_mobile/data/api/product_api.dart';
import 'package:p3l_k3_mobile/data/model/general_info_model.dart';
import 'package:p3l_k3_mobile/logic/auth_logic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'general_info_logic.g.dart';

@riverpod
class GeneralInfoLogic extends _$GeneralInfoLogic {
  @override
  Future<List<GeneralInfo>> build() async {
    state = const AsyncValue.loading();
    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
    return fetchAllGeneralInfo(token);
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
    final List<GeneralInfo> products = await fetchAllGeneralInfo(token);
    state = AsyncValue.data(products);
  }
}
