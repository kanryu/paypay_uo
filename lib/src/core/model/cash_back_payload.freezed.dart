// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cash_back_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CashBackPayload _$CashBackPayloadFromJson(Map<String, dynamic> json) {
  return _CashBackPayload.fromJson(json);
}

/// @nodoc
mixin _$CashBackPayload {
  /// [Required]
  /// string <= 64 characters
  String get merchantCashbackId => throw _privateConstructorUsedError;

  /// [Required]
  /// string <= 64 characters
  String get userAuthorizationId => throw _privateConstructorUsedError;

  /// [Required]
  /// Amount the user has to Pay
  Amount get amount => throw _privateConstructorUsedError;

  /// string <= 64 characters
  String? get merchantCashbackReversalId => throw _privateConstructorUsedError;

  /// Request timestamp(Unix epoch but not Unix millisecond epoch)
  int? get requestedAt => throw _privateConstructorUsedError;

  /// Description of the Order,
  /// to see the link to check how it will show up
  /// https://www.paypay.ne.jp/opa/doc/jp/v1.0/files/OPA%20PayPay%E3%82%A2%E3%83%97%E3%83%AA%E3%81%A7%E3%81%AE%E8%A1%A8%E7%A4%BA.pdf#page=4
  /// string <= 255 characters
  String? get orderDescription => throw _privateConstructorUsedError;
  String? get walletType => throw _privateConstructorUsedError;
  int? get expiryDate => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CashBackPayloadCopyWith<CashBackPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashBackPayloadCopyWith<$Res> {
  factory $CashBackPayloadCopyWith(
          CashBackPayload value, $Res Function(CashBackPayload) then) =
      _$CashBackPayloadCopyWithImpl<$Res, CashBackPayload>;
  @useResult
  $Res call(
      {String merchantCashbackId,
      String userAuthorizationId,
      Amount amount,
      String? merchantCashbackReversalId,
      int? requestedAt,
      String? orderDescription,
      String? walletType,
      int? expiryDate,
      Map<String, dynamic>? metadata});

  $AmountCopyWith<$Res> get amount;
}

/// @nodoc
class _$CashBackPayloadCopyWithImpl<$Res, $Val extends CashBackPayload>
    implements $CashBackPayloadCopyWith<$Res> {
  _$CashBackPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantCashbackId = null,
    Object? userAuthorizationId = null,
    Object? amount = null,
    Object? merchantCashbackReversalId = freezed,
    Object? requestedAt = freezed,
    Object? orderDescription = freezed,
    Object? walletType = freezed,
    Object? expiryDate = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      merchantCashbackId: null == merchantCashbackId
          ? _value.merchantCashbackId
          : merchantCashbackId // ignore: cast_nullable_to_non_nullable
              as String,
      userAuthorizationId: null == userAuthorizationId
          ? _value.userAuthorizationId
          : userAuthorizationId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
      merchantCashbackReversalId: freezed == merchantCashbackReversalId
          ? _value.merchantCashbackReversalId
          : merchantCashbackReversalId // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedAt: freezed == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      orderDescription: freezed == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      walletType: freezed == walletType
          ? _value.walletType
          : walletType // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$_CashBackPayloadCopyWith<$Res>
    implements $CashBackPayloadCopyWith<$Res> {
  factory _$$_CashBackPayloadCopyWith(
          _$_CashBackPayload value, $Res Function(_$_CashBackPayload) then) =
      __$$_CashBackPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String merchantCashbackId,
      String userAuthorizationId,
      Amount amount,
      String? merchantCashbackReversalId,
      int? requestedAt,
      String? orderDescription,
      String? walletType,
      int? expiryDate,
      Map<String, dynamic>? metadata});

  @override
  $AmountCopyWith<$Res> get amount;
}

/// @nodoc
class __$$_CashBackPayloadCopyWithImpl<$Res>
    extends _$CashBackPayloadCopyWithImpl<$Res, _$_CashBackPayload>
    implements _$$_CashBackPayloadCopyWith<$Res> {
  __$$_CashBackPayloadCopyWithImpl(
      _$_CashBackPayload _value, $Res Function(_$_CashBackPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantCashbackId = null,
    Object? userAuthorizationId = null,
    Object? amount = null,
    Object? merchantCashbackReversalId = freezed,
    Object? requestedAt = freezed,
    Object? orderDescription = freezed,
    Object? walletType = freezed,
    Object? expiryDate = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$_CashBackPayload(
      merchantCashbackId: null == merchantCashbackId
          ? _value.merchantCashbackId
          : merchantCashbackId // ignore: cast_nullable_to_non_nullable
              as String,
      userAuthorizationId: null == userAuthorizationId
          ? _value.userAuthorizationId
          : userAuthorizationId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
      merchantCashbackReversalId: freezed == merchantCashbackReversalId
          ? _value.merchantCashbackReversalId
          : merchantCashbackReversalId // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedAt: freezed == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      orderDescription: freezed == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      walletType: freezed == walletType
          ? _value.walletType
          : walletType // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as int?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CashBackPayload implements _CashBackPayload {
  _$_CashBackPayload(
      {required this.merchantCashbackId,
      required this.userAuthorizationId,
      required this.amount,
      this.merchantCashbackReversalId,
      this.requestedAt,
      this.orderDescription,
      this.walletType,
      this.expiryDate,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$_CashBackPayload.fromJson(Map<String, dynamic> json) =>
      _$$_CashBackPayloadFromJson(json);

  /// [Required]
  /// string <= 64 characters
  @override
  final String merchantCashbackId;

  /// [Required]
  /// string <= 64 characters
  @override
  final String userAuthorizationId;

  /// [Required]
  /// Amount the user has to Pay
  @override
  final Amount amount;

  /// string <= 64 characters
  @override
  final String? merchantCashbackReversalId;

  /// Request timestamp(Unix epoch but not Unix millisecond epoch)
  @override
  final int? requestedAt;

  /// Description of the Order,
  /// to see the link to check how it will show up
  /// https://www.paypay.ne.jp/opa/doc/jp/v1.0/files/OPA%20PayPay%E3%82%A2%E3%83%97%E3%83%AA%E3%81%A7%E3%81%AE%E8%A1%A8%E7%A4%BA.pdf#page=4
  /// string <= 255 characters
  @override
  final String? orderDescription;
  @override
  final String? walletType;
  @override
  final int? expiryDate;
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
    return 'CashBackPayload(merchantCashbackId: $merchantCashbackId, userAuthorizationId: $userAuthorizationId, amount: $amount, merchantCashbackReversalId: $merchantCashbackReversalId, requestedAt: $requestedAt, orderDescription: $orderDescription, walletType: $walletType, expiryDate: $expiryDate, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CashBackPayload &&
            (identical(other.merchantCashbackId, merchantCashbackId) ||
                other.merchantCashbackId == merchantCashbackId) &&
            (identical(other.userAuthorizationId, userAuthorizationId) ||
                other.userAuthorizationId == userAuthorizationId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.merchantCashbackReversalId,
                    merchantCashbackReversalId) ||
                other.merchantCashbackReversalId ==
                    merchantCashbackReversalId) &&
            (identical(other.requestedAt, requestedAt) ||
                other.requestedAt == requestedAt) &&
            (identical(other.orderDescription, orderDescription) ||
                other.orderDescription == orderDescription) &&
            (identical(other.walletType, walletType) ||
                other.walletType == walletType) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      merchantCashbackId,
      userAuthorizationId,
      amount,
      merchantCashbackReversalId,
      requestedAt,
      orderDescription,
      walletType,
      expiryDate,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CashBackPayloadCopyWith<_$_CashBackPayload> get copyWith =>
      __$$_CashBackPayloadCopyWithImpl<_$_CashBackPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CashBackPayloadToJson(
      this,
    );
  }
}

abstract class _CashBackPayload implements CashBackPayload {
  factory _CashBackPayload(
      {required final String merchantCashbackId,
      required final String userAuthorizationId,
      required final Amount amount,
      final String? merchantCashbackReversalId,
      final int? requestedAt,
      final String? orderDescription,
      final String? walletType,
      final int? expiryDate,
      final Map<String, dynamic>? metadata}) = _$_CashBackPayload;

  factory _CashBackPayload.fromJson(Map<String, dynamic> json) =
      _$_CashBackPayload.fromJson;

  @override

  /// [Required]
  /// string <= 64 characters
  String get merchantCashbackId;
  @override

  /// [Required]
  /// string <= 64 characters
  String get userAuthorizationId;
  @override

  /// [Required]
  /// Amount the user has to Pay
  Amount get amount;
  @override

  /// string <= 64 characters
  String? get merchantCashbackReversalId;
  @override

  /// Request timestamp(Unix epoch but not Unix millisecond epoch)
  int? get requestedAt;
  @override

  /// Description of the Order,
  /// to see the link to check how it will show up
  /// https://www.paypay.ne.jp/opa/doc/jp/v1.0/files/OPA%20PayPay%E3%82%A2%E3%83%97%E3%83%AA%E3%81%A7%E3%81%AE%E8%A1%A8%E7%A4%BA.pdf#page=4
  /// string <= 255 characters
  String? get orderDescription;
  @override
  String? get walletType;
  @override
  int? get expiryDate;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$_CashBackPayloadCopyWith<_$_CashBackPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
