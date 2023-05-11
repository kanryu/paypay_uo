// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_payment_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatePaymentPayload _$CreatePaymentPayloadFromJson(Map<String, dynamic> json) {
  return _CreatePaymentPayload.fromJson(json);
}

/// @nodoc
mixin _$CreatePaymentPayload {
  /// [Required]
  /// The unique payment transaction id provided by merchant
  /// string <= 64 characters
  String get merchantPaymentId => throw _privateConstructorUsedError;

  /// [Required]
  /// Amount the user has to Pay
  Amount get amount => throw _privateConstructorUsedError;

  /// [Required]
  /// string <= 64 characters
  String get userAuthorizationId => throw _privateConstructorUsedError;

  /// Request timestamp(Unix epoch but not Unix millisecond epoch)
  int? get requestedAt => throw _privateConstructorUsedError;

  /// Description of the Order,
  /// to see the link to check how it will show up
  /// https://www.paypay.ne.jp/opa/doc/jp/v1.0/files/OPA%20PayPay%E3%82%A2%E3%83%97%E3%83%AA%E3%81%A7%E3%81%AE%E8%A1%A8%E7%A4%BA.pdf#page=4
  /// string <= 255 characters
  String? get orderDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePaymentPayloadCopyWith<CreatePaymentPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePaymentPayloadCopyWith<$Res> {
  factory $CreatePaymentPayloadCopyWith(CreatePaymentPayload value,
          $Res Function(CreatePaymentPayload) then) =
      _$CreatePaymentPayloadCopyWithImpl<$Res, CreatePaymentPayload>;
  @useResult
  $Res call(
      {String merchantPaymentId,
      Amount amount,
      String userAuthorizationId,
      int? requestedAt,
      String? orderDescription});

  $AmountCopyWith<$Res> get amount;
}

/// @nodoc
class _$CreatePaymentPayloadCopyWithImpl<$Res,
        $Val extends CreatePaymentPayload>
    implements $CreatePaymentPayloadCopyWith<$Res> {
  _$CreatePaymentPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantPaymentId = null,
    Object? amount = null,
    Object? userAuthorizationId = null,
    Object? requestedAt = freezed,
    Object? orderDescription = freezed,
  }) {
    return _then(_value.copyWith(
      merchantPaymentId: null == merchantPaymentId
          ? _value.merchantPaymentId
          : merchantPaymentId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
      userAuthorizationId: null == userAuthorizationId
          ? _value.userAuthorizationId
          : userAuthorizationId // ignore: cast_nullable_to_non_nullable
              as String,
      requestedAt: freezed == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$_CreatePaymentPayloadCopyWith<$Res>
    implements $CreatePaymentPayloadCopyWith<$Res> {
  factory _$$_CreatePaymentPayloadCopyWith(_$_CreatePaymentPayload value,
          $Res Function(_$_CreatePaymentPayload) then) =
      __$$_CreatePaymentPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String merchantPaymentId,
      Amount amount,
      String userAuthorizationId,
      int? requestedAt,
      String? orderDescription});

  @override
  $AmountCopyWith<$Res> get amount;
}

/// @nodoc
class __$$_CreatePaymentPayloadCopyWithImpl<$Res>
    extends _$CreatePaymentPayloadCopyWithImpl<$Res, _$_CreatePaymentPayload>
    implements _$$_CreatePaymentPayloadCopyWith<$Res> {
  __$$_CreatePaymentPayloadCopyWithImpl(_$_CreatePaymentPayload _value,
      $Res Function(_$_CreatePaymentPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantPaymentId = null,
    Object? amount = null,
    Object? userAuthorizationId = null,
    Object? requestedAt = freezed,
    Object? orderDescription = freezed,
  }) {
    return _then(_$_CreatePaymentPayload(
      merchantPaymentId: null == merchantPaymentId
          ? _value.merchantPaymentId
          : merchantPaymentId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
      userAuthorizationId: null == userAuthorizationId
          ? _value.userAuthorizationId
          : userAuthorizationId // ignore: cast_nullable_to_non_nullable
              as String,
      requestedAt: freezed == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      orderDescription: freezed == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreatePaymentPayload implements _CreatePaymentPayload {
  _$_CreatePaymentPayload(
      {required this.merchantPaymentId,
      required this.amount,
      required this.userAuthorizationId,
      this.requestedAt,
      this.orderDescription});

  factory _$_CreatePaymentPayload.fromJson(Map<String, dynamic> json) =>
      _$$_CreatePaymentPayloadFromJson(json);

  /// [Required]
  /// The unique payment transaction id provided by merchant
  /// string <= 64 characters
  @override
  final String merchantPaymentId;

  /// [Required]
  /// Amount the user has to Pay
  @override
  final Amount amount;

  /// [Required]
  /// string <= 64 characters
  @override
  final String userAuthorizationId;

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
  String toString() {
    return 'CreatePaymentPayload(merchantPaymentId: $merchantPaymentId, amount: $amount, userAuthorizationId: $userAuthorizationId, requestedAt: $requestedAt, orderDescription: $orderDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatePaymentPayload &&
            (identical(other.merchantPaymentId, merchantPaymentId) ||
                other.merchantPaymentId == merchantPaymentId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.userAuthorizationId, userAuthorizationId) ||
                other.userAuthorizationId == userAuthorizationId) &&
            (identical(other.requestedAt, requestedAt) ||
                other.requestedAt == requestedAt) &&
            (identical(other.orderDescription, orderDescription) ||
                other.orderDescription == orderDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, merchantPaymentId, amount,
      userAuthorizationId, requestedAt, orderDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatePaymentPayloadCopyWith<_$_CreatePaymentPayload> get copyWith =>
      __$$_CreatePaymentPayloadCopyWithImpl<_$_CreatePaymentPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatePaymentPayloadToJson(
      this,
    );
  }
}

abstract class _CreatePaymentPayload implements CreatePaymentPayload {
  factory _CreatePaymentPayload(
      {required final String merchantPaymentId,
      required final Amount amount,
      required final String userAuthorizationId,
      final int? requestedAt,
      final String? orderDescription}) = _$_CreatePaymentPayload;

  factory _CreatePaymentPayload.fromJson(Map<String, dynamic> json) =
      _$_CreatePaymentPayload.fromJson;

  @override

  /// [Required]
  /// The unique payment transaction id provided by merchant
  /// string <= 64 characters
  String get merchantPaymentId;
  @override

  /// [Required]
  /// Amount the user has to Pay
  Amount get amount;
  @override

  /// [Required]
  /// string <= 64 characters
  String get userAuthorizationId;
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
  @JsonKey(ignore: true)
  _$$_CreatePaymentPayloadCopyWith<_$_CreatePaymentPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
