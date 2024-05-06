// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'absence_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AbsenceImpl _$$AbsenceImplFromJson(Map<String, dynamic> json) =>
    _$AbsenceImpl(
      id: json['id'] as int,
      employeeId: json['employees_id'] as int,
      absenceDate: DateTime.parse(json['absence_date'] as String),
      employees: Employee.fromJson(json['employees'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AbsenceImplToJson(_$AbsenceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employees_id': instance.employeeId,
      'absence_date': instance.absenceDate.toIso8601String(),
      'employees': instance.employees.toJson(),
    };
