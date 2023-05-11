// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reverse_cash_back_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReverseCashBackPayload _$ReverseCashBackPayloadFromJson(
    Map<String, dynamic> json) {
  return _ReverseCashBackPayload.fromJson(json);
}

/// @nodoc
mixin _$ReverseCashBackPayload {
  /// [Required]
  /// string <= 64 characters
  String get merchantCashbackId => throw _privateConstructorUsedError;

  /// string <= 64 characters
  String get merchantCashbackReversalId => throw _privateConstructorUsedError;

  /// [Required]
  /// Amount the user has to Pay
  Amount get amount => throw _privateConstructorUsedError;

  /// Request timestamp(Unix epoch but not Unix millisecond epoch)
  int? get requestedAt => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;

  /// Description of the Order,
  /// to see the link to check how it will show up
  /// https://www.paypay.ne.jp/opa/doc/jp/v1.0/files/OPA%20PayPay%E3%82%A2%E3%83%97%E3%83%AA%E3%81%A7%E3%81%AE%E8%A1%A8%E7%A4%BA.pdf#page=4
  /// string <= 255 characters
  String? get orderDescription => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReverseCashBackPayloadCopyWith<ReverseCashBackPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReverseCashBackPayloadCopyWith<$Res> {
  factory $ReverseCashBackPayloadCopyWith(ReverseCashBackPayload value,
          $Res Function(ReverseCashBackPayload) then) =
      _$ReverseCashBackPayloadCopyWithImpl<$Res, ReverseCashBackPayload>;
  @useResult
  $Res call(
      {String merchantCashbackId,
      String merchantCashbackReversalId,
      Amount amount,
      int? requestedAt,
      String? reason,
      String? orderDescription,
      Map<String, dynamic>? metadata});

  $AmountCopyWith<$Res> get amount;
}

/// @nodoc
class _$ReverseCashBackPayloadCopyWithImpl<$Res,
        $Val extends ReverseCashBackPayload>
    implements $ReverseCashBackPayloadCopyWith<$Res> {
  _$ReverseCashBackPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantCashbackId = null,
    Object? merchantCashbackReversalId = null,
    Object? amount = null,
    Object? requestedAt = freezed,
    Object? reason = freezed,
    Object? orderDescription = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      merchantCashbackId: null == merchantCashbackId
          ? _value.merchantCashbackId
          : merchantCashbackId // ignore: cast_nullable_to_non_nullable
              as String,
      merchantCashbackReversalId: null == merchantCashbackReversalId
          ? _value.merchantCashbackReversalId
          : merchantCashbackReversalId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
      requestedAt: freezed == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDescription: freezed == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AmountCopyWith<$Res> get amount {
    return $AmountCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReverseCashBackPayloadCopyWith<$Res>
    implements $ReverseCashBackPayloadCopyWith<$Res> {
  factory _$$_ReverseCashBackPayloadCopyWith(_$_ReverseCashBackPayload value,
          $Res Function(_$_ReverseCashBackPayload) then) =
      __$$_ReverseCashBackPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String merchantCashbackId,
      String merchantCashbackReversalId,
      Amount amount,
      int? requestedAt,
      String? reason,
      String? orderDescription,
      Map<String, dynamic>? metadata});

  @override
  $AmountCopyWith<$Res> get amount;
}

/// @nodoc
class __$$_ReverseCashBackPayloadCopyWithImpl<$Res>
    extends _$ReverseCashBackPayloadCopyWithImpl<$Res,
        _$_ReverseCashBackPayload>
    implements _$$_ReverseCashBackPayloadCopyWith<$Res> {
  __$$_ReverseCashBackPayloadCopyWithImpl(_$_ReverseCashBackPayload _value,
      $Res Function(_$_ReverseCashBackPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantCashbackId = null,
    Object? merchantCashbackReversalId = null,
    Object? amount = null,
    Object? requestedAt = freezed,
    Object? reason = freezed,
    Object? orderDescription = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$_ReverseCashBackPayload(
      merchantCashbackId: null == merchantCashbackId
          ? _value.merchantCashbackId
          : merchantCashbackId // ignore: cast_nullable_to_non_nullable
              as String,
      merchantCashbackReversalId: null == merchantCashbackReversalId
          ? _value.merchantCashbackReversalId
          : merchantCashbackReversalId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
      requestedAt: freezed == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDescription: freezed == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReverseCashBackPayload implements _ReverseCashBackPayload {
  _$_ReverseCashBackPayload(
      {required this.merchantCashbackId,
      required this.merchantCashbackReversalId,
      required this.amount,
      this.requestedAt,
      this.reason,
      this.orderDescription,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$_ReverseCashBackPayload.fromJson(Map<String, dynamic> json) =>
      _$$_ReverseCashBackPayloadFromJson(json);

  /// [Required]
  /// string <= 64 characters
  @override
  final String merchantCashbackId;

  /// string <= 64 characters
  @override
  final String merchantCashbackReversalId;

  /// [Required]
  /// Amount the user has to Pay
  @override
  final Amount amount;

  /// Request timestamp(Unix epoch but not Unix millisecond epoch)
  @override
  final int? requestedAt;
  @override
  final String? reason;

  /// Description of the Order,
  /// to see the link to check how it will show up
  /// https://www.paypay.ne.jp/opa/doc/jp/v1.0/files/OPA%20PayPay%E3%82%A2%E3%83%97%E3%83%AA%E3%81%A7%E3%81%AE%E8%A1%A8%E7%A4%BA.pdf#page=4
  /// string <= 255 characters
  @override
  final String? orderDescription;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ReverseCashBackPayload(merchantCashbackId: $merchantCashbackId, merchantCashbackReversalId: $merchantCashbackReversalId, amount: $amount, requestedAt: $requestedAt, reason: $reason, orderDescription: $orderDescription, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReverseCashBackPayload &&
            (identical(other.merchantCashbackId, merchantCashbackId) ||
                other.merchantCashbackId == merchantCashbackId) &&
            (identical(other.merchantCashbackReversalId,
                    merchantCashbackReversalId) ||
                other.merchantCashbackReversalId ==
                    merchantCashbackReversalId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.requestedAt, requestedAt) ||
                other.requestedAt == requestedAt) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.orderDescription, orderDescription) ||
                other.orderDescription == orderDescription) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      merchantCashbackId,
      merchantCashbackReversalId,
      amount,
      requestedAt,
      reason,
      orderDescription,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReverseCashBackPayloadCopyWith<_$_ReverseCashBackPayload> get copyWith =>
      __$$_ReverseCashBackPayloadCopyWithImpl<_$_ReverseCashBackPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReverseCashBackPayloadToJson(
      this,
    );
  }
}

abstract class _ReverseCashBackPayload implements ReverseCashBackPayload {
  factory _ReverseCashBackPayload(
      {required final String merchantCashbackId,
      required final String merchantCashbackReversalId,
      required final Amount amount,
      final int? requestedAt,
      final String? reason,
      final String? orderDescription,
      final Map<String, dynamic>? metadata}) = _$_ReverseCashBackPayload;

  factory _ReverseCashBackPayload.fromJson(Map<String, dynamic> json) =
      _$_ReverseCashBackPayload.fromJson;

  @override

  /// [Required]
  /// string <= 64 characters
  String get merchantCashbackId;
  @override

  /// string <= 64 characters
  String get merchantCashbackReversalId;
  @override

  /// [Required]
  /// Amount the user has to Pay
  Amount get amount;
  @override

  /// Request timestamp(Unix epoch but not Unix millisecond epoch)
  int? get requestedAt;
  @override
  String? get reason;
  @override

  /// Description of the Order,
  /// to see the link to check how it will show up
  /// https://www.paypay.ne.jp/opa/doc/jp/v1.0/files/OPA%20PayPay%E3%82%A2%E3%83%97%E3%83%AA%E3%81%A7%E3%81%AE%E8%A1%A8%E7%A4%BA.pdf#page=4
  /// string <= 255 characters
  String? get orderDescription;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$_ReverseCashBackPayloadCopyWith<_$_ReverseCashBackPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
