import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_info_model.freezed.dart';
part 'general_info_model.g.dart';

@freezed
class GeneralInfo with _$GeneralInfo {
  const factory GeneralInfo({
    required int id,
    required String picture,
  }) = _GeneralInfo;

  factory GeneralInfo.fromJson(Map<String, dynamic> json) => _$GeneralInfoFromJson(json);
}
