// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_use_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IngredientUseHistory _$IngredientUseHistoryFromJson(Map<String, dynamic> json) {
  return _IngredientUseHistory.fromJson(json);
}

/// @nodoc
mixin _$IngredientUseHistory {
  int get id => throw _privateConstructorUsedError;
  Ingredient get ingredients => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientUseHistoryCopyWith<IngredientUseHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientUseHistoryCopyWith<$Res> {
  factory $IngredientUseHistoryCopyWith(IngredientUseHistory value,
          $Res Function(IngredientUseHistory) then) =
      _$IngredientUseHistoryCopyWithImpl<$Res, IngredientUseHistory>;
  @useResult
  $Res call({int id, Ingredient ingredients, DateTime date, int quantity});

  $IngredientCopyWith<$Res> get ingredients;
}

/// @nodoc
class _$IngredientUseHistoryCopyWithImpl<$Res,
        $Val extends IngredientUseHistory>
    implements $IngredientUseHistoryCopyWith<$Res> {
  _$IngredientUseHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ingredients = null,
    Object? date = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as Ingredient,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IngredientCopyWith<$Res> get ingredients {
    return $IngredientCopyWith<$Res>(_value.ingredients, (value) {
      return _then(_value.copyWith(ingredients: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IngredientUseHistoryImplCopyWith<$Res>
    implements $IngredientUseHistoryCopyWith<$Res> {
  factory _$$IngredientUseHistoryImplCopyWith(_$IngredientUseHistoryImpl value,
          $Res Function(_$IngredientUseHistoryImpl) then) =
      __$$IngredientUseHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Ingredient ingredients, DateTime date, int quantity});

  @override
  $IngredientCopyWith<$Res> get ingredients;
}

/// @nodoc
class __$$IngredientUseHistoryImplCopyWithImpl<$Res>
    extends _$IngredientUseHistoryCopyWithImpl<$Res, _$IngredientUseHistoryImpl>
    implements _$$IngredientUseHistoryImplCopyWith<$Res> {
  __$$IngredientUseHistoryImplCopyWithImpl(_$IngredientUseHistoryImpl _value,
      $Res Function(_$IngredientUseHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ingredients = null,
    Object? date = null,
    Object? quantity = null,
  }) {
    return _then(_$IngredientUseHistoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as Ingredient,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientUseHistoryImpl implements _IngredientUseHistory {
  const _$IngredientUseHistoryImpl(
      {required this.id,
      required this.ingredients,
      required this.date,
      required this.quantity});

  factory _$IngredientUseHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientUseHistoryImplFromJson(json);

  @override
  final int id;
  @override
  final Ingredient ingredients;
  @override
  final DateTime date;
  @override
  final int quantity;

  @override
  String toString() {
    return 'IngredientUseHistory(id: $id, ingredients: $ingredients, date: $date, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientUseHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ingredients, ingredients) ||
                other.ingredients == ingredients) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, ingredients, date, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientUseHistoryImplCopyWith<_$IngredientUseHistoryImpl>
      get copyWith =>
          __$$IngredientUseHistoryImplCopyWithImpl<_$IngredientUseHistoryImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientUseHistoryImplToJson(
      this,
    );
  }
}

abstract class _IngredientUseHistory implements IngredientUseHistory {
  const factory _IngredientUseHistory(
      {required final int id,
      required final Ingredient ingredients,
      required final DateTime date,
      required final int quantity}) = _$IngredientUseHistoryImpl;

  factory _IngredientUseHistory.fromJson(Map<String, dynamic> json) =
      _$IngredientUseHistoryImpl.fromJson;

  @override
  int get id;
  @override
  Ingredient get ingredients;
  @override
  DateTime get date;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$IngredientUseHistoryImplCopyWith<_$IngredientUseHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
