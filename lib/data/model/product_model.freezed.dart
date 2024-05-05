// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'consignor_id')
  int get consignorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'ready_stock')
  int get readyStock => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_stock')
  int get dailyStock => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_price')
  int get productPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_status')
  String get productStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_picture')
  String get productPicture => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'consignor_id') int consignorId,
      @JsonKey(name: 'category_id') int categoryId,
      @JsonKey(name: 'product_name') String productName,
      @JsonKey(name: 'ready_stock') int readyStock,
      @JsonKey(name: 'daily_stock') int dailyStock,
      @JsonKey(name: 'product_price') int productPrice,
      @JsonKey(name: 'product_status') String productStatus,
      @JsonKey(name: 'product_picture') String productPicture,
      bool active,
      String description});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consignorId = null,
    Object? categoryId = null,
    Object? productName = null,
    Object? readyStock = null,
    Object? dailyStock = null,
    Object? productPrice = null,
    Object? productStatus = null,
    Object? productPicture = null,
    Object? active = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      consignorId: null == consignorId
          ? _value.consignorId
          : consignorId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      readyStock: null == readyStock
          ? _value.readyStock
          : readyStock // ignore: cast_nullable_to_non_nullable
              as int,
      dailyStock: null == dailyStock
          ? _value.dailyStock
          : dailyStock // ignore: cast_nullable_to_non_nullable
              as int,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as int,
      productStatus: null == productStatus
          ? _value.productStatus
          : productStatus // ignore: cast_nullable_to_non_nullable
              as String,
      productPicture: null == productPicture
          ? _value.productPicture
          : productPicture // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'consignor_id') int consignorId,
      @JsonKey(name: 'category_id') int categoryId,
      @JsonKey(name: 'product_name') String productName,
      @JsonKey(name: 'ready_stock') int readyStock,
      @JsonKey(name: 'daily_stock') int dailyStock,
      @JsonKey(name: 'product_price') int productPrice,
      @JsonKey(name: 'product_status') String productStatus,
      @JsonKey(name: 'product_picture') String productPicture,
      bool active,
      String description});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consignorId = null,
    Object? categoryId = null,
    Object? productName = null,
    Object? readyStock = null,
    Object? dailyStock = null,
    Object? productPrice = null,
    Object? productStatus = null,
    Object? productPicture = null,
    Object? active = null,
    Object? description = null,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      consignorId: null == consignorId
          ? _value.consignorId
          : consignorId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      readyStock: null == readyStock
          ? _value.readyStock
          : readyStock // ignore: cast_nullable_to_non_nullable
              as int,
      dailyStock: null == dailyStock
          ? _value.dailyStock
          : dailyStock // ignore: cast_nullable_to_non_nullable
              as int,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as int,
      productStatus: null == productStatus
          ? _value.productStatus
          : productStatus // ignore: cast_nullable_to_non_nullable
              as String,
      productPicture: null == productPicture
          ? _value.productPicture
          : productPicture // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl with DiagnosticableTreeMixin implements _Product {
  const _$ProductImpl(
      {required this.id,
      @JsonKey(name: 'consignor_id') required this.consignorId,
      @JsonKey(name: 'category_id') required this.categoryId,
      @JsonKey(name: 'product_name') required this.productName,
      @JsonKey(name: 'ready_stock') required this.readyStock,
      @JsonKey(name: 'daily_stock') required this.dailyStock,
      @JsonKey(name: 'product_price') required this.productPrice,
      @JsonKey(name: 'product_status') required this.productStatus,
      @JsonKey(name: 'product_picture') required this.productPicture,
      required this.active,
      required this.description});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'consignor_id')
  final int consignorId;
  @override
  @JsonKey(name: 'category_id')
  final int categoryId;
  @override
  @JsonKey(name: 'product_name')
  final String productName;
  @override
  @JsonKey(name: 'ready_stock')
  final int readyStock;
  @override
  @JsonKey(name: 'daily_stock')
  final int dailyStock;
  @override
  @JsonKey(name: 'product_price')
  final int productPrice;
  @override
  @JsonKey(name: 'product_status')
  final String productStatus;
  @override
  @JsonKey(name: 'product_picture')
  final String productPicture;
  @override
  final bool active;
  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Product(id: $id, consignorId: $consignorId, categoryId: $categoryId, productName: $productName, readyStock: $readyStock, dailyStock: $dailyStock, productPrice: $productPrice, productStatus: $productStatus, productPicture: $productPicture, active: $active, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Product'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('consignorId', consignorId))
      ..add(DiagnosticsProperty('categoryId', categoryId))
      ..add(DiagnosticsProperty('productName', productName))
      ..add(DiagnosticsProperty('readyStock', readyStock))
      ..add(DiagnosticsProperty('dailyStock', dailyStock))
      ..add(DiagnosticsProperty('productPrice', productPrice))
      ..add(DiagnosticsProperty('productStatus', productStatus))
      ..add(DiagnosticsProperty('productPicture', productPicture))
      ..add(DiagnosticsProperty('active', active))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consignorId, consignorId) ||
                other.consignorId == consignorId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.readyStock, readyStock) ||
                other.readyStock == readyStock) &&
            (identical(other.dailyStock, dailyStock) ||
                other.dailyStock == dailyStock) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            (identical(other.productStatus, productStatus) ||
                other.productStatus == productStatus) &&
            (identical(other.productPicture, productPicture) ||
                other.productPicture == productPicture) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      consignorId,
      categoryId,
      productName,
      readyStock,
      dailyStock,
      productPrice,
      productStatus,
      productPicture,
      active,
      description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final int id,
      @JsonKey(name: 'consignor_id') required final int consignorId,
      @JsonKey(name: 'category_id') required final int categoryId,
      @JsonKey(name: 'product_name') required final String productName,
      @JsonKey(name: 'ready_stock') required final int readyStock,
      @JsonKey(name: 'daily_stock') required final int dailyStock,
      @JsonKey(name: 'product_price') required final int productPrice,
      @JsonKey(name: 'product_status') required final String productStatus,
      @JsonKey(name: 'product_picture') required final String productPicture,
      required final bool active,
      required final String description}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'consignor_id')
  int get consignorId;
  @override
  @JsonKey(name: 'category_id')
  int get categoryId;
  @override
  @JsonKey(name: 'product_name')
  String get productName;
  @override
  @JsonKey(name: 'ready_stock')
  int get readyStock;
  @override
  @JsonKey(name: 'daily_stock')
  int get dailyStock;
  @override
  @JsonKey(name: 'product_price')
  int get productPrice;
  @override
  @JsonKey(name: 'product_status')
  String get productStatus;
  @override
  @JsonKey(name: 'product_picture')
  String get productPicture;
  @override
  bool get active;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
