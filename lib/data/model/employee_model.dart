import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:p3l_k3_mobile/data/model/user_model.dart';

part 'employee_model.freezed.dart';
part 'employee_model.g.dart';

@freezed
class Employee with _$Employee {
  const factory Employee({
    required int id,
    @JsonKey(name: 'users') required User user,
    @JsonKey(name: 'work_start_date') required DateTime workStartDate, @Default(0)
    int userId, // might not be useful but whatever...just comment it if it makes trouble
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);
}
