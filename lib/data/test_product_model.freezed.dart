// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TestProduct {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestProductCopyWith<TestProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestProductCopyWith<$Res> {
  factory $TestProductCopyWith(
          TestProduct value, $Res Function(TestProduct) then) =
      _$TestProductCopyWithImpl<$Res, TestProduct>;
  @useResult
  $Res call(
      {int id, String name, String description, double price, String imageUrl});
}

/// @nodoc
class _$TestProductCopyWithImpl<$Res, $Val extends TestProduct>
    implements $TestProductCopyWith<$Res> {
  _$TestProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? imageUrl = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestProductImplCopyWith<$Res>
    implements $TestProductCopyWith<$Res> {
  factory _$$TestProductImplCopyWith(
          _$TestProductImpl value, $Res Function(_$TestProductImpl) then) =
      __$$TestProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, String description, double price, String imageUrl});
}

/// @nodoc
class __$$TestProductImplCopyWithImpl<$Res>
    extends _$TestProductCopyWithImpl<$Res, _$TestProductImpl>
    implements _$$TestProductImplCopyWith<$Res> {
  __$$TestProductImplCopyWithImpl(
      _$TestProductImpl _value, $Res Function(_$TestProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? imageUrl = null,
  }) {
    return _then(_$TestProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TestProductImpl implements _TestProduct {
  const _$TestProductImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.imageUrl});

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final double price;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'TestProduct(id: $id, name: $name, description: $description, price: $price, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, price, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestProductImplCopyWith<_$TestProductImpl> get copyWith =>
      __$$TestProductImplCopyWithImpl<_$TestProductImpl>(this, _$identity);
}

abstract class _TestProduct implements TestProduct {
  const factory _TestProduct(
      {required final int id,
      required final String name,
      required final String description,
      required final double price,
      required final String imageUrl}) = _$TestProductImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  double get price;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$TestProductImplCopyWith<_$TestProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
