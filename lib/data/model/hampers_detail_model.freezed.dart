// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hampers_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HampersDetail _$HampersDetailFromJson(Map<String, dynamic> json) {
  return _HampersDetail.fromJson(json);
}

/// @nodoc
mixin _$HampersDetail {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'hampers_id')
  int get hampersId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ingredient_id')
  int get ingredientId => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;
  Ingredient? get ingredients => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HampersDetailCopyWith<HampersDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HampersDetailCopyWith<$Res> {
  factory $HampersDetailCopyWith(
          HampersDetail value, $Res Function(HampersDetail) then) =
      _$HampersDetailCopyWithImpl<$Res, HampersDetail>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'hampers_id') int hampersId,
      @JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'ingredient_id') int ingredientId,
      Product? product,
      Ingredient? ingredients});

  $ProductCopyWith<$Res>? get product;
  $IngredientCopyWith<$Res>? get ingredients;
}

/// @nodoc
class _$HampersDetailCopyWithImpl<$Res, $Val extends HampersDetail>
    implements $HampersDetailCopyWith<$Res> {
  _$HampersDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hampersId = null,
    Object? productId = freezed,
    Object? ingredientId = null,
    Object? product = freezed,
    Object? ingredients = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hampersId: null == hampersId
          ? _value.hampersId
          : hampersId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      ingredientId: null == ingredientId
          ? _value.ingredientId
          : ingredientId // ignore: cast_nullable_to_non_nullable
              as int,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      ingredients: freezed == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as Ingredient?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IngredientCopyWith<$Res>? get ingredients {
    if (_value.ingredients == null) {
      return null;
    }

    return $IngredientCopyWith<$Res>(_value.ingredients!, (value) {
      return _then(_value.copyWith(ingredients: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HampersDetailImplCopyWith<$Res>
    implements $HampersDetailCopyWith<$Res> {
  factory _$$HampersDetailImplCopyWith(
          _$HampersDetailImpl value, $Res Function(_$HampersDetailImpl) then) =
      __$$HampersDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'hampers_id') int hampersId,
      @JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'ingredient_id') int ingredientId,
      Product? product,
      Ingredient? ingredients});

  @override
  $ProductCopyWith<$Res>? get product;
  @override
  $IngredientCopyWith<$Res>? get ingredients;
}

/// @nodoc
class __$$HampersDetailImplCopyWithImpl<$Res>
    extends _$HampersDetailCopyWithImpl<$Res, _$HampersDetailImpl>
    implements _$$HampersDetailImplCopyWith<$Res> {
  __$$HampersDetailImplCopyWithImpl(
      _$HampersDetailImpl _value, $Res Function(_$HampersDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hampersId = null,
    Object? productId = freezed,
    Object? ingredientId = null,
    Object? product = freezed,
    Object? ingredients = freezed,
  }) {
    return _then(_$HampersDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hampersId: null == hampersId
          ? _value.hampersId
          : hampersId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      ingredientId: null == ingredientId
          ? _value.ingredientId
          : ingredientId // ignore: cast_nullable_to_non_nullable
              as int,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      ingredients: freezed == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as Ingredient?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HampersDetailImpl implements _HampersDetail {
  const _$HampersDetailImpl(
      {required this.id,
      @JsonKey(name: 'hampers_id') required this.hampersId,
      @JsonKey(name: 'product_id') required this.productId,
      @JsonKey(name: 'ingredient_id') this.ingredientId = 0,
      required this.product,
      required this.ingredients});

  factory _$HampersDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$HampersDetailImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'hampers_id')
  final int hampersId;
  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  @JsonKey(name: 'ingredient_id')
  final int ingredientId;
  @override
  final Product? product;
  @override
  final Ingredient? ingredients;

  @override
  String toString() {
    return 'HampersDetail(id: $id, hampersId: $hampersId, productId: $productId, ingredientId: $ingredientId, product: $product, ingredients: $ingredients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HampersDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hampersId, hampersId) ||
                other.hampersId == hampersId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.ingredientId, ingredientId) ||
                other.ingredientId == ingredientId) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.ingredients, ingredients) ||
                other.ingredients == ingredients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, hampersId, productId,
      ingredientId, product, ingredients);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HampersDetailImplCopyWith<_$HampersDetailImpl> get copyWith =>
      __$$HampersDetailImplCopyWithImpl<_$HampersDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HampersDetailImplToJson(
      this,
    );
  }
}

abstract class _HampersDetail implements HampersDetail {
  const factory _HampersDetail(
      {required final int id,
      @JsonKey(name: 'hampers_id') required final int hampersId,
      @JsonKey(name: 'product_id') required final int? productId,
      @JsonKey(name: 'ingredient_id') final int ingredientId,
      required final Product? product,
      required final Ingredient? ingredients}) = _$HampersDetailImpl;

  factory _HampersDetail.fromJson(Map<String, dynamic> json) =
      _$HampersDetailImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'hampers_id')
  int get hampersId;
  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  @JsonKey(name: 'ingredient_id')
  int get ingredientId;
  @override
  Product? get product;
  @override
  Ingredient? get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$HampersDetailImplCopyWith<_$HampersDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
