// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeImpl _$$EmployeeImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeImpl(
      id: json['id'] as int,
      user: User.fromJson(json['users'] as Map<String, dynamic>),
      userId: json['userId'] as int? ?? 0,
      workStartDate: DateTime.parse(json['work_start_date'] as String),
    );

Map<String, dynamic> _$$EmployeeImplToJson(_$EmployeeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'users': instance.user,
      'userId': instance.userId,
      'work_start_date': instance.workStartDate.toIso8601String(),
    };
