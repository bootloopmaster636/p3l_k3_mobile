// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hampers_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Hampers _$HampersFromJson(Map<String, dynamic> json) {
  return _Hampers.fromJson(json);
}

/// @nodoc
mixin _$Hampers {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'hampers_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'hampers_price')
  int get price => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'hampers_picture')
  String get picture => throw _privateConstructorUsedError;
  int get active => throw _privateConstructorUsedError;
  @JsonKey(name: 'hampers_detail')
  List<HampersDetail> get hampersDetail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HampersCopyWith<Hampers> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HampersCopyWith<$Res> {
  factory $HampersCopyWith(Hampers value, $Res Function(Hampers) then) =
      _$HampersCopyWithImpl<$Res, Hampers>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'hampers_name') String name,
      @JsonKey(name: 'hampers_price') int price,
      int quantity,
      @JsonKey(name: 'hampers_picture') String picture,
      int active,
      @JsonKey(name: 'hampers_detail') List<HampersDetail> hampersDetail});
}

/// @nodoc
class _$HampersCopyWithImpl<$Res, $Val extends Hampers>
    implements $HampersCopyWith<$Res> {
  _$HampersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? quantity = null,
    Object? picture = null,
    Object? active = null,
    Object? hampersDetail = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
      hampersDetail: null == hampersDetail
          ? _value.hampersDetail
          : hampersDetail // ignore: cast_nullable_to_non_nullable
              as List<HampersDetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HampersImplCopyWith<$Res> implements $HampersCopyWith<$Res> {
  factory _$$HampersImplCopyWith(
          _$HampersImpl value, $Res Function(_$HampersImpl) then) =
      __$$HampersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'hampers_name') String name,
      @JsonKey(name: 'hampers_price') int price,
      int quantity,
      @JsonKey(name: 'hampers_picture') String picture,
      int active,
      @JsonKey(name: 'hampers_detail') List<HampersDetail> hampersDetail});
}

/// @nodoc
class __$$HampersImplCopyWithImpl<$Res>
    extends _$HampersCopyWithImpl<$Res, _$HampersImpl>
    implements _$$HampersImplCopyWith<$Res> {
  __$$HampersImplCopyWithImpl(
      _$HampersImpl _value, $Res Function(_$HampersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? quantity = null,
    Object? picture = null,
    Object? active = null,
    Object? hampersDetail = null,
  }) {
    return _then(_$HampersImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
      hampersDetail: null == hampersDetail
          ? _value._hampersDetail
          : hampersDetail // ignore: cast_nullable_to_non_nullable
              as List<HampersDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HampersImpl implements _Hampers {
  const _$HampersImpl(
      {required this.id,
      @JsonKey(name: 'hampers_name') required this.name,
      @JsonKey(name: 'hampers_price') required this.price,
      required this.quantity,
      @JsonKey(name: 'hampers_picture') required this.picture,
      required this.active,
      @JsonKey(name: 'hampers_detail')
      required final List<HampersDetail> hampersDetail})
      : _hampersDetail = hampersDetail;

  factory _$HampersImpl.fromJson(Map<String, dynamic> json) =>
      _$$HampersImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'hampers_name')
  final String name;
  @override
  @JsonKey(name: 'hampers_price')
  final int price;
  @override
  final int quantity;
  @override
  @JsonKey(name: 'hampers_picture')
  final String picture;
  @override
  final int active;
  final List<HampersDetail> _hampersDetail;
  @override
  @JsonKey(name: 'hampers_detail')
  List<HampersDetail> get hampersDetail {
    if (_hampersDetail is EqualUnmodifiableListView) return _hampersDetail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hampersDetail);
  }

  @override
  String toString() {
    return 'Hampers(id: $id, name: $name, price: $price, quantity: $quantity, picture: $picture, active: $active, hampersDetail: $hampersDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HampersImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.active, active) || other.active == active) &&
            const DeepCollectionEquality()
                .equals(other._hampersDetail, _hampersDetail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price, quantity,
      picture, active, const DeepCollectionEquality().hash(_hampersDetail));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HampersImplCopyWith<_$HampersImpl> get copyWith =>
      __$$HampersImplCopyWithImpl<_$HampersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HampersImplToJson(
      this,
    );
  }
}

abstract class _Hampers implements Hampers {
  const factory _Hampers(
      {required final int id,
      @JsonKey(name: 'hampers_name') required final String name,
      @JsonKey(name: 'hampers_price') required final int price,
      required final int quantity,
      @JsonKey(name: 'hampers_picture') required final String picture,
      required final int active,
      @JsonKey(name: 'hampers_detail')
      required final List<HampersDetail> hampersDetail}) = _$HampersImpl;

  factory _Hampers.fromJson(Map<String, dynamic> json) = _$HampersImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'hampers_name')
  String get name;
  @override
  @JsonKey(name: 'hampers_price')
  int get price;
  @override
  int get quantity;
  @override
  @JsonKey(name: 'hampers_picture')
  String get picture;
  @override
  int get active;
  @override
  @JsonKey(name: 'hampers_detail')
  List<HampersDetail> get hampersDetail;
  @override
  @JsonKey(ignore: true)
  _$$HampersImplCopyWith<_$HampersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
