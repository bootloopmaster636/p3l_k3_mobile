// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeneralInfo _$GeneralInfoFromJson(Map<String, dynamic> json) {
  return _GeneralInfo.fromJson(json);
}

/// @nodoc
mixin _$GeneralInfo {
  int get id => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralInfoCopyWith<GeneralInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralInfoCopyWith<$Res> {
  factory $GeneralInfoCopyWith(
          GeneralInfo value, $Res Function(GeneralInfo) then) =
      _$GeneralInfoCopyWithImpl<$Res, GeneralInfo>;
  @useResult
  $Res call({int id, String picture});
}

/// @nodoc
class _$GeneralInfoCopyWithImpl<$Res, $Val extends GeneralInfo>
    implements $GeneralInfoCopyWith<$Res> {
  _$GeneralInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? picture = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeneralInfoImplCopyWith<$Res>
    implements $GeneralInfoCopyWith<$Res> {
  factory _$$GeneralInfoImplCopyWith(
          _$GeneralInfoImpl value, $Res Function(_$GeneralInfoImpl) then) =
      __$$GeneralInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String picture});
}

/// @nodoc
class __$$GeneralInfoImplCopyWithImpl<$Res>
    extends _$GeneralInfoCopyWithImpl<$Res, _$GeneralInfoImpl>
    implements _$$GeneralInfoImplCopyWith<$Res> {
  __$$GeneralInfoImplCopyWithImpl(
      _$GeneralInfoImpl _value, $Res Function(_$GeneralInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? picture = null,
  }) {
    return _then(_$GeneralInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneralInfoImpl implements _GeneralInfo {
  const _$GeneralInfoImpl({required this.id, required this.picture});

  factory _$GeneralInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneralInfoImplFromJson(json);

  @override
  final int id;
  @override
  final String picture;

  @override
  String toString() {
    return 'GeneralInfo(id: $id, picture: $picture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralInfoImplCopyWith<_$GeneralInfoImpl> get copyWith =>
      __$$GeneralInfoImplCopyWithImpl<_$GeneralInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneralInfoImplToJson(
      this,
    );
  }
}

abstract class _GeneralInfo implements GeneralInfo {
  const factory _GeneralInfo(
      {required final int id,
      required final String picture}) = _$GeneralInfoImpl;

  factory _GeneralInfo.fromJson(Map<String, dynamic> json) =
      _$GeneralInfoImpl.fromJson;

  @override
  int get id;
  @override
  String get picture;
  @override
  @JsonKey(ignore: true)
  _$$GeneralInfoImplCopyWith<_$GeneralInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
