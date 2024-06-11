// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Delivery _$DeliveryFromJson(Map<String, dynamic> json) {
  return _Delivery.fromJson(json);
}

/// @nodoc
mixin _$Delivery {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_method')
  String? get deliveryMethod => throw _privateConstructorUsedError;
  int? get distance => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_cost')
  int? get shippingCost => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipient_address')
  String? get recipientAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryCopyWith<Delivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryCopyWith<$Res> {
  factory $DeliveryCopyWith(Delivery value, $Res Function(Delivery) then) =
      _$DeliveryCopyWithImpl<$Res, Delivery>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'delivery_method') String? deliveryMethod,
      int? distance,
      @JsonKey(name: 'shipping_cost') int? shippingCost,
      @JsonKey(name: 'recipient_address') String? recipientAddress});
}

/// @nodoc
class _$DeliveryCopyWithImpl<$Res, $Val extends Delivery>
    implements $DeliveryCopyWith<$Res> {
  _$DeliveryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deliveryMethod = freezed,
    Object? distance = freezed,
    Object? shippingCost = freezed,
    Object? recipientAddress = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryMethod: freezed == deliveryMethod
          ? _value.deliveryMethod
          : deliveryMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      shippingCost: freezed == shippingCost
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as int?,
      recipientAddress: freezed == recipientAddress
          ? _value.recipientAddress
          : recipientAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryImplCopyWith<$Res>
    implements $DeliveryCopyWith<$Res> {
  factory _$$DeliveryImplCopyWith(
          _$DeliveryImpl value, $Res Function(_$DeliveryImpl) then) =
      __$$DeliveryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'delivery_method') String? deliveryMethod,
      int? distance,
      @JsonKey(name: 'shipping_cost') int? shippingCost,
      @JsonKey(name: 'recipient_address') String? recipientAddress});
}

/// @nodoc
class __$$DeliveryImplCopyWithImpl<$Res>
    extends _$DeliveryCopyWithImpl<$Res, _$DeliveryImpl>
    implements _$$DeliveryImplCopyWith<$Res> {
  __$$DeliveryImplCopyWithImpl(
      _$DeliveryImpl _value, $Res Function(_$DeliveryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deliveryMethod = freezed,
    Object? distance = freezed,
    Object? shippingCost = freezed,
    Object? recipientAddress = freezed,
  }) {
    return _then(_$DeliveryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryMethod: freezed == deliveryMethod
          ? _value.deliveryMethod
          : deliveryMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      shippingCost: freezed == shippingCost
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as int?,
      recipientAddress: freezed == recipientAddress
          ? _value.recipientAddress
          : recipientAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryImpl implements _Delivery {
  const _$DeliveryImpl(
      {required this.id,
      @JsonKey(name: 'delivery_method') required this.deliveryMethod,
      required this.distance,
      @JsonKey(name: 'shipping_cost') required this.shippingCost,
      @JsonKey(name: 'recipient_address') required this.recipientAddress});

  factory _$DeliveryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'delivery_method')
  final String? deliveryMethod;
  @override
  final int? distance;
  @override
  @JsonKey(name: 'shipping_cost')
  final int? shippingCost;
  @override
  @JsonKey(name: 'recipient_address')
  final String? recipientAddress;

  @override
  String toString() {
    return 'Delivery(id: $id, deliveryMethod: $deliveryMethod, distance: $distance, shippingCost: $shippingCost, recipientAddress: $recipientAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deliveryMethod, deliveryMethod) ||
                other.deliveryMethod == deliveryMethod) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.shippingCost, shippingCost) ||
                other.shippingCost == shippingCost) &&
            (identical(other.recipientAddress, recipientAddress) ||
                other.recipientAddress == recipientAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, deliveryMethod, distance,
      shippingCost, recipientAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryImplCopyWith<_$DeliveryImpl> get copyWith =>
      __$$DeliveryImplCopyWithImpl<_$DeliveryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryImplToJson(
      this,
    );
  }
}

abstract class _Delivery implements Delivery {
  const factory _Delivery(
      {required final int id,
      @JsonKey(name: 'delivery_method') required final String? deliveryMethod,
      required final int? distance,
      @JsonKey(name: 'shipping_cost') required final int? shippingCost,
      @JsonKey(name: 'recipient_address')
      required final String? recipientAddress}) = _$DeliveryImpl;

  factory _Delivery.fromJson(Map<String, dynamic> json) =
      _$DeliveryImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'delivery_method')
  String? get deliveryMethod;
  @override
  int? get distance;
  @override
  @JsonKey(name: 'shipping_cost')
  int? get shippingCost;
  @override
  @JsonKey(name: 'recipient_address')
  String? get recipientAddress;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryImplCopyWith<_$DeliveryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
