// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refund_payment_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RefundPaymentPayload _$RefundPaymentPayloadFromJson(Map<String, dynamic> json) {
  return _RefundPaymentPayload.fromJson(json);
}

/// @nodoc
mixin _$RefundPaymentPayload {
  /// [Required]
  /// The unique payment transaction id provided by merchant
  /// string <= 64 characters
  String get merchantRefundId => throw _privateConstructorUsedError;

  /// [Required]
  /// The unique payment transaction id provided by merchant
  String get paymentId => throw _privateConstructorUsedError;

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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefundPaymentPayloadCopyWith<RefundPaymentPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundPaymentPayloadCopyWith<$Res> {
  factory $RefundPaymentPayloadCopyWith(RefundPaymentPayload value,
          $Res Function(RefundPaymentPayload) then) =
      _$RefundPaymentPayloadCopyWithImpl<$Res, RefundPaymentPayload>;
  @useResult
  $Res call(
      {String merchantRefundId,
      String paymentId,
      Amount amount,
      int? requestedAt,
      String? reason,
      String? orderDescription});

  $AmountCopyWith<$Res> get amount;
}

/// @nodoc
class _$RefundPaymentPayloadCopyWithImpl<$Res,
        $Val extends RefundPaymentPayload>
    implements $RefundPaymentPayloadCopyWith<$Res> {
  _$RefundPaymentPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantRefundId = null,
    Object? paymentId = null,
    Object? amount = null,
    Object? requestedAt = freezed,
    Object? reason = freezed,
    Object? orderDescription = freezed,
  }) {
    return _then(_value.copyWith(
      merchantRefundId: null == merchantRefundId
          ? _value.merchantRefundId
          : merchantRefundId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_RefundPaymentPayloadCopyWith<$Res>
    implements $RefundPaymentPayloadCopyWith<$Res> {
  factory _$$_RefundPaymentPayloadCopyWith(_$_RefundPaymentPayload value,
          $Res Function(_$_RefundPaymentPayload) then) =
      __$$_RefundPaymentPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String merchantRefundId,
      String paymentId,
      Amount amount,
      int? requestedAt,
      String? reason,
      String? orderDescription});

  @override
  $AmountCopyWith<$Res> get amount;
}

/// @nodoc
class __$$_RefundPaymentPayloadCopyWithImpl<$Res>
    extends _$RefundPaymentPayloadCopyWithImpl<$Res, _$_RefundPaymentPayload>
    implements _$$_RefundPaymentPayloadCopyWith<$Res> {
  __$$_RefundPaymentPayloadCopyWithImpl(_$_RefundPaymentPayload _value,
      $Res Function(_$_RefundPaymentPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantRefundId = null,
    Object? paymentId = null,
    Object? amount = null,
    Object? requestedAt = freezed,
    Object? reason = freezed,
    Object? orderDescription = freezed,
  }) {
    return _then(_$_RefundPaymentPayload(
      merchantRefundId: null == merchantRefundId
          ? _value.merchantRefundId
          : merchantRefundId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefundPaymentPayload implements _RefundPaymentPayload {
  _$_RefundPaymentPayload(
      {required this.merchantRefundId,
      required this.paymentId,
      required this.amount,
      this.requestedAt,
      this.reason,
      this.orderDescription});

  factory _$_RefundPaymentPayload.fromJson(Map<String, dynamic> json) =>
      _$$_RefundPaymentPayloadFromJson(json);

  /// [Required]
  /// The unique payment transaction id provided by merchant
  /// string <= 64 characters
  @override
  final String merchantRefundId;

  /// [Required]
  /// The unique payment transaction id provided by merchant
  @override
  final String paymentId;

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

  @override
  String toString() {
    return 'RefundPaymentPayload(merchantRefundId: $merchantRefundId, paymentId: $paymentId, amount: $amount, requestedAt: $requestedAt, reason: $reason, orderDescription: $orderDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefundPaymentPayload &&
            (identical(other.merchantRefundId, merchantRefundId) ||
                other.merchantRefundId == merchantRefundId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.requestedAt, requestedAt) ||
                other.requestedAt == requestedAt) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.orderDescription, orderDescription) ||
                other.orderDescription == orderDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, merchantRefundId, paymentId,
      amount, requestedAt, reason, orderDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefundPaymentPayloadCopyWith<_$_RefundPaymentPayload> get copyWith =>
      __$$_RefundPaymentPayloadCopyWithImpl<_$_RefundPaymentPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefundPaymentPayloadToJson(
      this,
    );
  }
}

abstract class _RefundPaymentPayload implements RefundPaymentPayload {
  factory _RefundPaymentPayload(
      {required final String merchantRefundId,
      required final String paymentId,
      required final Amount amount,
      final int? requestedAt,
      final String? reason,
      final String? orderDescription}) = _$_RefundPaymentPayload;

  factory _RefundPaymentPayload.fromJson(Map<String, dynamic> json) =
      _$_RefundPaymentPayload.fromJson;

  @override

  /// [Required]
  /// The unique payment transaction id provided by merchant
  /// string <= 64 characters
  String get merchantRefundId;
  @override

  /// [Required]
  /// The unique payment transaction id provided by merchant
  String get paymentId;
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
  @JsonKey(ignore: true)
  _$$_RefundPaymentPayloadCopyWith<_$_RefundPaymentPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
