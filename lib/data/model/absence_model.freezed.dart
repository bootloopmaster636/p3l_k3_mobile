// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'absence_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Absence _$AbsenceFromJson(Map<String, dynamic> json) {
  return _Absence.fromJson(json);
}

/// @nodoc
mixin _$Absence {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'employees_id')
  int get employeeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'absence_date')
  DateTime get absenceDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbsenceCopyWith<Absence> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbsenceCopyWith<$Res> {
  factory $AbsenceCopyWith(Absence value, $Res Function(Absence) then) =
      _$AbsenceCopyWithImpl<$Res, Absence>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'employees_id') int employeeId,
      @JsonKey(name: 'absence_date') DateTime absenceDate});
}

/// @nodoc
class _$AbsenceCopyWithImpl<$Res, $Val extends Absence>
    implements $AbsenceCopyWith<$Res> {
  _$AbsenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeId = null,
    Object? absenceDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
      absenceDate: null == absenceDate
          ? _value.absenceDate
          : absenceDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AbsenceImplCopyWith<$Res> implements $AbsenceCopyWith<$Res> {
  factory _$$AbsenceImplCopyWith(
          _$AbsenceImpl value, $Res Function(_$AbsenceImpl) then) =
      __$$AbsenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'employees_id') int employeeId,
      @JsonKey(name: 'absence_date') DateTime absenceDate});
}

/// @nodoc
class __$$AbsenceImplCopyWithImpl<$Res>
    extends _$AbsenceCopyWithImpl<$Res, _$AbsenceImpl>
    implements _$$AbsenceImplCopyWith<$Res> {
  __$$AbsenceImplCopyWithImpl(
      _$AbsenceImpl _value, $Res Function(_$AbsenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeId = null,
    Object? absenceDate = null,
  }) {
    return _then(_$AbsenceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
      absenceDate: null == absenceDate
          ? _value.absenceDate
          : absenceDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AbsenceImpl with DiagnosticableTreeMixin implements _Absence {
  const _$AbsenceImpl(
      {required this.id,
      @JsonKey(name: 'employees_id') required this.employeeId,
      @JsonKey(name: 'absence_date') required this.absenceDate});

  factory _$AbsenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbsenceImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'employees_id')
  final int employeeId;
  @override
  @JsonKey(name: 'absence_date')
  final DateTime absenceDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Absence(id: $id, employeeId: $employeeId, absenceDate: $absenceDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Absence'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('employeeId', employeeId))
      ..add(DiagnosticsProperty('absenceDate', absenceDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbsenceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.absenceDate, absenceDate) ||
                other.absenceDate == absenceDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, employeeId, absenceDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbsenceImplCopyWith<_$AbsenceImpl> get copyWith =>
      __$$AbsenceImplCopyWithImpl<_$AbsenceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbsenceImplToJson(
      this,
    );
  }
}

abstract class _Absence implements Absence {
  const factory _Absence(
          {required final int id,
          @JsonKey(name: 'employees_id') required final int employeeId,
          @JsonKey(name: 'absence_date') required final DateTime absenceDate}) =
      _$AbsenceImpl;

  factory _Absence.fromJson(Map<String, dynamic> json) = _$AbsenceImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'employees_id')
  int get employeeId;
  @override
  @JsonKey(name: 'absence_date')
  DateTime get absenceDate;
  @override
  @JsonKey(ignore: true)
  _$$AbsenceImplCopyWith<_$AbsenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
