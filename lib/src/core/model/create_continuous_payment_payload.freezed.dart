// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_continuous_payment_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateContinuousPaymentPayload _$CreateContinuousPaymentPayloadFromJson(
    Map<String, dynamic> json) {
  return _CreateContinuousPaymentPayload.fromJson(json);
}

/// @nodoc
mixin _$CreateContinuousPaymentPayload {
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
  $CreateContinuousPaymentPayloadCopyWith<CreateContinuousPaymentPayload>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateContinuousPaymentPayloadCopyWith<$Res> {
  factory $CreateContinuousPaymentPayloadCopyWith(
          CreateContinuousPaymentPayload value,
          $Res Function(CreateContinuousPaymentPayload) then) =
      _$CreateContinuousPaymentPayloadCopyWithImpl<$Res,
          CreateContinuousPaymentPayload>;
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
class _$CreateContinuousPaymentPayloadCopyWithImpl<$Res,
        $Val extends CreateContinuousPaymentPayload>
    implements $CreateContinuousPaymentPayloadCopyWith<$Res> {
  _$CreateContinuousPaymentPayloadCopyWithImpl(this._value, this._then);

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
abstract class _$$_CreateContinuousPaymentPayloadCopyWith<$Res>
    implements $CreateContinuousPaymentPayloadCopyWith<$Res> {
  factory _$$_CreateContinuousPaymentPayloadCopyWith(
          _$_CreateContinuousPaymentPayload value,
          $Res Function(_$_CreateContinuousPaymentPayload) then) =
      __$$_CreateContinuousPaymentPayloadCopyWithImpl<$Res>;
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
class __$$_CreateContinuousPaymentPayloadCopyWithImpl<$Res>
    extends _$CreateContinuousPaymentPayloadCopyWithImpl<$Res,
        _$_CreateContinuousPaymentPayload>
    implements _$$_CreateContinuousPaymentPayloadCopyWith<$Res> {
  __$$_CreateContinuousPaymentPayloadCopyWithImpl(
      _$_CreateContinuousPaymentPayload _value,
      $Res Function(_$_CreateContinuousPaymentPayload) _then)
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
    return _then(_$_CreateContinuousPaymentPayload(
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
class _$_CreateContinuousPaymentPayload
    implements _CreateContinuousPaymentPayload {
  _$_CreateContinuousPaymentPayload(
      {required this.merchantPaymentId,
      required this.amount,
      required this.userAuthorizationId,
      this.requestedAt,
      this.orderDescription});

  factory _$_CreateContinuousPaymentPayload.fromJson(
          Map<String, dynamic> json) =>
      _$$_CreateContinuousPaymentPayloadFromJson(json);

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
    return 'CreateContinuousPaymentPayload(merchantPaymentId: $merchantPaymentId, amount: $amount, userAuthorizationId: $userAuthorizationId, requestedAt: $requestedAt, orderDescription: $orderDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateContinuousPaymentPayload &&
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
  _$$_CreateContinuousPaymentPayloadCopyWith<_$_CreateContinuousPaymentPayload>
      get copyWith => __$$_CreateContinuousPaymentPayloadCopyWithImpl<
          _$_CreateContinuousPaymentPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateContinuousPaymentPayloadToJson(
      this,
    );
  }
}

abstract class _CreateContinuousPaymentPayload
    implements CreateContinuousPaymentPayload {
  factory _CreateContinuousPaymentPayload(
      {required final String merchantPaymentId,
      required final Amount amount,
      required final String userAuthorizationId,
      final int? requestedAt,
      final String? orderDescription}) = _$_CreateContinuousPaymentPayload;

  factory _CreateContinuousPaymentPayload.fromJson(Map<String, dynamic> json) =
      _$_CreateContinuousPaymentPayload.fromJson;

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
  _$$_CreateContinuousPaymentPayloadCopyWith<_$_CreateContinuousPaymentPayload>
      get copyWith => throw _privateConstructorUsedError;
}
