// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consumption.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Consumption {
  double get lastConsumptionReading => throw _privateConstructorUsedError;
  double get lastConsumptionAmount => throw _privateConstructorUsedError;
  String get ownerDpto => throw _privateConstructorUsedError;

  /// Create a copy of Consumption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsumptionCopyWith<Consumption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsumptionCopyWith<$Res> {
  factory $ConsumptionCopyWith(
          Consumption value, $Res Function(Consumption) then) =
      _$ConsumptionCopyWithImpl<$Res, Consumption>;
  @useResult
  $Res call(
      {double lastConsumptionReading,
      double lastConsumptionAmount,
      String ownerDpto});
}

/// @nodoc
class _$ConsumptionCopyWithImpl<$Res, $Val extends Consumption>
    implements $ConsumptionCopyWith<$Res> {
  _$ConsumptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Consumption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastConsumptionReading = null,
    Object? lastConsumptionAmount = null,
    Object? ownerDpto = null,
  }) {
    return _then(_value.copyWith(
      lastConsumptionReading: null == lastConsumptionReading
          ? _value.lastConsumptionReading
          : lastConsumptionReading // ignore: cast_nullable_to_non_nullable
              as double,
      lastConsumptionAmount: null == lastConsumptionAmount
          ? _value.lastConsumptionAmount
          : lastConsumptionAmount // ignore: cast_nullable_to_non_nullable
              as double,
      ownerDpto: null == ownerDpto
          ? _value.ownerDpto
          : ownerDpto // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsumptionImplCopyWith<$Res>
    implements $ConsumptionCopyWith<$Res> {
  factory _$$ConsumptionImplCopyWith(
          _$ConsumptionImpl value, $Res Function(_$ConsumptionImpl) then) =
      __$$ConsumptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double lastConsumptionReading,
      double lastConsumptionAmount,
      String ownerDpto});
}

/// @nodoc
class __$$ConsumptionImplCopyWithImpl<$Res>
    extends _$ConsumptionCopyWithImpl<$Res, _$ConsumptionImpl>
    implements _$$ConsumptionImplCopyWith<$Res> {
  __$$ConsumptionImplCopyWithImpl(
      _$ConsumptionImpl _value, $Res Function(_$ConsumptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Consumption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastConsumptionReading = null,
    Object? lastConsumptionAmount = null,
    Object? ownerDpto = null,
  }) {
    return _then(_$ConsumptionImpl(
      lastConsumptionReading: null == lastConsumptionReading
          ? _value.lastConsumptionReading
          : lastConsumptionReading // ignore: cast_nullable_to_non_nullable
              as double,
      lastConsumptionAmount: null == lastConsumptionAmount
          ? _value.lastConsumptionAmount
          : lastConsumptionAmount // ignore: cast_nullable_to_non_nullable
              as double,
      ownerDpto: null == ownerDpto
          ? _value.ownerDpto
          : ownerDpto // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConsumptionImpl implements _Consumption {
  const _$ConsumptionImpl(
      {required this.lastConsumptionReading,
      required this.lastConsumptionAmount,
      required this.ownerDpto});

  @override
  final double lastConsumptionReading;
  @override
  final double lastConsumptionAmount;
  @override
  final String ownerDpto;

  @override
  String toString() {
    return 'Consumption(lastConsumptionReading: $lastConsumptionReading, lastConsumptionAmount: $lastConsumptionAmount, ownerDpto: $ownerDpto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsumptionImpl &&
            (identical(other.lastConsumptionReading, lastConsumptionReading) ||
                other.lastConsumptionReading == lastConsumptionReading) &&
            (identical(other.lastConsumptionAmount, lastConsumptionAmount) ||
                other.lastConsumptionAmount == lastConsumptionAmount) &&
            (identical(other.ownerDpto, ownerDpto) ||
                other.ownerDpto == ownerDpto));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, lastConsumptionReading, lastConsumptionAmount, ownerDpto);

  /// Create a copy of Consumption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsumptionImplCopyWith<_$ConsumptionImpl> get copyWith =>
      __$$ConsumptionImplCopyWithImpl<_$ConsumptionImpl>(this, _$identity);
}

abstract class _Consumption implements Consumption {
  const factory _Consumption(
      {required final double lastConsumptionReading,
      required final double lastConsumptionAmount,
      required final String ownerDpto}) = _$ConsumptionImpl;

  @override
  double get lastConsumptionReading;
  @override
  double get lastConsumptionAmount;
  @override
  String get ownerDpto;

  /// Create a copy of Consumption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsumptionImplCopyWith<_$ConsumptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
