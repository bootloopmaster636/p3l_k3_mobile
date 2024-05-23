import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:p3l_k3_mobile/data/model/employee_model.dart';

part 'absence_model.freezed.dart';
part 'absence_model.g.dart';

@freezed
class Absence with _$Absence {
  const factory Absence({
    required int id,
    @JsonKey(name: 'employees_id') required int employeeId,
    @JsonKey(name: 'absence_date') required DateTime absenceDate,
    required Employee employees,
  }) = _Absence;

  factory Absence.fromJson(Map<String, dynamic> json) =>
      _$AbsenceFromJson(json);
}
