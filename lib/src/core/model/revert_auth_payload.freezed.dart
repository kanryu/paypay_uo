// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'revert_auth_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RevertAuthPayload _$RevertAuthPayloadFromJson(Map<String, dynamic> json) {
  return _RevertAuthPayload.fromJson(json);
}

/// @nodoc
mixin _$RevertAuthPayload {
  /// [Required]
  /// Undocmerchant Revert Id
  /// string <= 64 characters
  String get merchantRevertId => throw _privateConstructorUsedError;

  /// [Required]
  /// Payment Id
  String get paymentId => throw _privateConstructorUsedError;

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
  $RevertAuthPayloadCopyWith<RevertAuthPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RevertAuthPayloadCopyWith<$Res> {
  factory $RevertAuthPayloadCopyWith(
          RevertAuthPayload value, $Res Function(RevertAuthPayload) then) =
      _$RevertAuthPayloadCopyWithImpl<$Res, RevertAuthPayload>;
  @useResult
  $Res call(
      {String merchantRevertId,
      String paymentId,
      int? requestedAt,
      String? reason,
      String? orderDescription});
}

/// @nodoc
class _$RevertAuthPayloadCopyWithImpl<$Res, $Val extends RevertAuthPayload>
    implements $RevertAuthPayloadCopyWith<$Res> {
  _$RevertAuthPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantRevertId = null,
    Object? paymentId = null,
    Object? requestedAt = freezed,
    Object? reason = freezed,
    Object? orderDescription = freezed,
  }) {
    return _then(_value.copyWith(
      merchantRevertId: null == merchantRevertId
          ? _value.merchantRevertId
          : merchantRevertId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
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
}

/// @nodoc
abstract class _$$_RevertAuthPayloadCopyWith<$Res>
    implements $RevertAuthPayloadCopyWith<$Res> {
  factory _$$_RevertAuthPayloadCopyWith(_$_RevertAuthPayload value,
          $Res Function(_$_RevertAuthPayload) then) =
      __$$_RevertAuthPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String merchantRevertId,
      String paymentId,
      int? requestedAt,
      String? reason,
      String? orderDescription});
}

/// @nodoc
class __$$_RevertAuthPayloadCopyWithImpl<$Res>
    extends _$RevertAuthPayloadCopyWithImpl<$Res, _$_RevertAuthPayload>
    implements _$$_RevertAuthPayloadCopyWith<$Res> {
  __$$_RevertAuthPayloadCopyWithImpl(
      _$_RevertAuthPayload _value, $Res Function(_$_RevertAuthPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantRevertId = null,
    Object? paymentId = null,
    Object? requestedAt = freezed,
    Object? reason = freezed,
    Object? orderDescription = freezed,
  }) {
    return _then(_$_RevertAuthPayload(
      merchantRevertId: null == merchantRevertId
          ? _value.merchantRevertId
          : merchantRevertId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_RevertAuthPayload implements _RevertAuthPayload {
  _$_RevertAuthPayload(
      {required this.merchantRevertId,
      required this.paymentId,
      this.requestedAt,
      this.reason,
      this.orderDescription});

  factory _$_RevertAuthPayload.fromJson(Map<String, dynamic> json) =>
      _$$_RevertAuthPayloadFromJson(json);

  /// [Required]
  /// Undocmerchant Revert Id
  /// string <= 64 characters
  @override
  final String merchantRevertId;

  /// [Required]
  /// Payment Id
  @override
  final String paymentId;

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
    return 'RevertAuthPayload(merchantRevertId: $merchantRevertId, paymentId: $paymentId, requestedAt: $requestedAt, reason: $reason, orderDescription: $orderDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RevertAuthPayload &&
            (identical(other.merchantRevertId, merchantRevertId) ||
                other.merchantRevertId == merchantRevertId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.requestedAt, requestedAt) ||
                other.requestedAt == requestedAt) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.orderDescription, orderDescription) ||
                other.orderDescription == orderDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, merchantRevertId, paymentId,
      requestedAt, reason, orderDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RevertAuthPayloadCopyWith<_$_RevertAuthPayload> get copyWith =>
      __$$_RevertAuthPayloadCopyWithImpl<_$_RevertAuthPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RevertAuthPayloadToJson(
      this,
    );
  }
}

abstract class _RevertAuthPayload implements RevertAuthPayload {
  factory _RevertAuthPayload(
      {required final String merchantRevertId,
      required final String paymentId,
      final int? requestedAt,
      final String? reason,
      final String? orderDescription}) = _$_RevertAuthPayload;

  factory _RevertAuthPayload.fromJson(Map<String, dynamic> json) =
      _$_RevertAuthPayload.fromJson;

  @override

  /// [Required]
  /// Undocmerchant Revert Id
  /// string <= 64 characters
  String get merchantRevertId;
  @override

  /// [Required]
  /// Payment Id
  String get paymentId;
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
  _$$_RevertAuthPayloadCopyWith<_$_RevertAuthPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
