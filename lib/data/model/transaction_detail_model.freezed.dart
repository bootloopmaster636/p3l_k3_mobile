// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionDetail _$TransactionDetailFromJson(Map<String, dynamic> json) {
  return _TransactionDetail.fromJson(json);
}

/// @nodoc
mixin _$TransactionDetail {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_id')
  int get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'hampers_id')
  int? get hampersId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_price')
  int get totalPrice => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;
  Hampers? get hampers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDetailCopyWith<TransactionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDetailCopyWith<$Res> {
  factory $TransactionDetailCopyWith(
          TransactionDetail value, $Res Function(TransactionDetail) then) =
      _$TransactionDetailCopyWithImpl<$Res, TransactionDetail>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'transaction_id') int transactionId,
      @JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'hampers_id') int? hampersId,
      int quantity,
      int price,
      @JsonKey(name: 'total_price') int totalPrice,
      Product? product,
      Hampers? hampers});

  $ProductCopyWith<$Res>? get product;
  $HampersCopyWith<$Res>? get hampers;
}

/// @nodoc
class _$TransactionDetailCopyWithImpl<$Res, $Val extends TransactionDetail>
    implements $TransactionDetailCopyWith<$Res> {
  _$TransactionDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? transactionId = null,
    Object? productId = freezed,
    Object? hampersId = freezed,
    Object? quantity = null,
    Object? price = null,
    Object? totalPrice = null,
    Object? product = freezed,
    Object? hampers = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      hampersId: freezed == hampersId
          ? _value.hampersId
          : hampersId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      hampers: freezed == hampers
          ? _value.hampers
          : hampers // ignore: cast_nullable_to_non_nullable
              as Hampers?,
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
  $HampersCopyWith<$Res>? get hampers {
    if (_value.hampers == null) {
      return null;
    }

    return $HampersCopyWith<$Res>(_value.hampers!, (value) {
      return _then(_value.copyWith(hampers: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionDetailImplCopyWith<$Res>
    implements $TransactionDetailCopyWith<$Res> {
  factory _$$TransactionDetailImplCopyWith(_$TransactionDetailImpl value,
          $Res Function(_$TransactionDetailImpl) then) =
      __$$TransactionDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'transaction_id') int transactionId,
      @JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'hampers_id') int? hampersId,
      int quantity,
      int price,
      @JsonKey(name: 'total_price') int totalPrice,
      Product? product,
      Hampers? hampers});

  @override
  $ProductCopyWith<$Res>? get product;
  @override
  $HampersCopyWith<$Res>? get hampers;
}

/// @nodoc
class __$$TransactionDetailImplCopyWithImpl<$Res>
    extends _$TransactionDetailCopyWithImpl<$Res, _$TransactionDetailImpl>
    implements _$$TransactionDetailImplCopyWith<$Res> {
  __$$TransactionDetailImplCopyWithImpl(_$TransactionDetailImpl _value,
      $Res Function(_$TransactionDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? transactionId = null,
    Object? productId = freezed,
    Object? hampersId = freezed,
    Object? quantity = null,
    Object? price = null,
    Object? totalPrice = null,
    Object? product = freezed,
    Object? hampers = freezed,
  }) {
    return _then(_$TransactionDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      hampersId: freezed == hampersId
          ? _value.hampersId
          : hampersId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      hampers: freezed == hampers
          ? _value.hampers
          : hampers // ignore: cast_nullable_to_non_nullable
              as Hampers?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionDetailImpl implements _TransactionDetail {
  const _$TransactionDetailImpl(
      {this.id,
      @JsonKey(name: 'transaction_id') required this.transactionId,
      @JsonKey(name: 'product_id') required this.productId,
      @JsonKey(name: 'hampers_id') required this.hampersId,
      required this.quantity,
      required this.price,
      @JsonKey(name: 'total_price') required this.totalPrice,
      this.product,
      this.hampers});

  factory _$TransactionDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionDetailImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'transaction_id')
  final int transactionId;
  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  @JsonKey(name: 'hampers_id')
  final int? hampersId;
  @override
  final int quantity;
  @override
  final int price;
  @override
  @JsonKey(name: 'total_price')
  final int totalPrice;
  @override
  final Product? product;
  @override
  final Hampers? hampers;

  @override
  String toString() {
    return 'TransactionDetail(id: $id, transactionId: $transactionId, productId: $productId, hampersId: $hampersId, quantity: $quantity, price: $price, totalPrice: $totalPrice, product: $product, hampers: $hampers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.hampersId, hampersId) ||
                other.hampersId == hampersId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.hampers, hampers) || other.hampers == hampers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, transactionId, productId,
      hampersId, quantity, price, totalPrice, product, hampers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDetailImplCopyWith<_$TransactionDetailImpl> get copyWith =>
      __$$TransactionDetailImplCopyWithImpl<_$TransactionDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDetailImplToJson(
      this,
    );
  }
}

abstract class _TransactionDetail implements TransactionDetail {
  const factory _TransactionDetail(
      {final int? id,
      @JsonKey(name: 'transaction_id') required final int transactionId,
      @JsonKey(name: 'product_id') required final int? productId,
      @JsonKey(name: 'hampers_id') required final int? hampersId,
      required final int quantity,
      required final int price,
      @JsonKey(name: 'total_price') required final int totalPrice,
      final Product? product,
      final Hampers? hampers}) = _$TransactionDetailImpl;

  factory _TransactionDetail.fromJson(Map<String, dynamic> json) =
      _$TransactionDetailImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'transaction_id')
  int get transactionId;
  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  @JsonKey(name: 'hampers_id')
  int? get hampersId;
  @override
  int get quantity;
  @override
  int get price;
  @override
  @JsonKey(name: 'total_price')
  int get totalPrice;
  @override
  Product? get product;
  @override
  Hampers? get hampers;
  @override
  @JsonKey(ignore: true)
  _$$TransactionDetailImplCopyWith<_$TransactionDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
