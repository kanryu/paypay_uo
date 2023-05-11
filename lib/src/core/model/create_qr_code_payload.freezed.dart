// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_qr_code_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateQrCodePayload _$CreateQrCodePayloadFromJson(Map<String, dynamic> json) {
  return _CreateQrCodePayload.fromJson(json);
}

/// @nodoc
mixin _$CreateQrCodePayload {
  /// [Required]
  /// The unique payment transaction id provided by merchant
  /// string <= 64 characters
  String get merchantPaymentId => throw _privateConstructorUsedError;

  /// [Required]
  /// Amount the user has to Pay
  Amount get amount => throw _privateConstructorUsedError;

  /// [Required]
  /// Please pass the fixed value 'ORDER_QR'
  String get codeType => throw _privateConstructorUsedError;

  /// Request timestamp(Unix epoch but not Unix millisecond epoch)
  int? get requestedAt => throw _privateConstructorUsedError;

  /// The user agent of the web browser from where transaction is originating
  List<OrderItem>? get orderItems => throw _privateConstructorUsedError;

  /// This can either be 'WEB_LINK' if the payment is happening on web browser or 'APP_DEEP_LINK' if the payment is happening on your app
  String? get redirectType => throw _privateConstructorUsedError;

  /// The url of the page/app to open after the payment is complete, this can be a Web URL or a Deep link to your app
  String? get redirectUrl => throw _privateConstructorUsedError;

  /// Description of the Order,
  /// to see the link to check how it will show up
  /// https://www.paypay.ne.jp/opa/doc/jp/v1.0/files/OPA%20PayPay%E3%82%A2%E3%83%97%E3%83%AA%E3%81%A7%E3%81%AE%E8%A1%A8%E7%A4%BA.pdf#page=4
  /// string <= 255 characters
  String? get orderDescription => throw _privateConstructorUsedError;

  /// By default it will be false, please set true if the amount will be captured later (preauth and capture payment)
  bool? get isAuthorization => throw _privateConstructorUsedError;

  /// The user agent of the web browser from where transaction is originating
  String? get userAgent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateQrCodePayloadCopyWith<CreateQrCodePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateQrCodePayloadCopyWith<$Res> {
  factory $CreateQrCodePayloadCopyWith(
          CreateQrCodePayload value, $Res Function(CreateQrCodePayload) then) =
      _$CreateQrCodePayloadCopyWithImpl<$Res, CreateQrCodePayload>;
  @useResult
  $Res call(
      {String merchantPaymentId,
      Amount amount,
      String codeType,
      int? requestedAt,
      List<OrderItem>? orderItems,
      String? redirectType,
      String? redirectUrl,
      String? orderDescription,
      bool? isAuthorization,
      String? userAgent});

  $AmountCopyWith<$Res> get amount;
}

/// @nodoc
class _$CreateQrCodePayloadCopyWithImpl<$Res, $Val extends CreateQrCodePayload>
    implements $CreateQrCodePayloadCopyWith<$Res> {
  _$CreateQrCodePayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantPaymentId = null,
    Object? amount = null,
    Object? codeType = null,
    Object? requestedAt = freezed,
    Object? orderItems = freezed,
    Object? redirectType = freezed,
    Object? redirectUrl = freezed,
    Object? orderDescription = freezed,
    Object? isAuthorization = freezed,
    Object? userAgent = freezed,
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
      codeType: null == codeType
          ? _value.codeType
          : codeType // ignore: cast_nullable_to_non_nullable
              as String,
      requestedAt: freezed == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      orderItems: freezed == orderItems
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>?,
      redirectType: freezed == redirectType
          ? _value.redirectType
          : redirectType // ignore: cast_nullable_to_non_nullable
              as String?,
      redirectUrl: freezed == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDescription: freezed == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      isAuthorization: freezed == isAuthorization
          ? _value.isAuthorization
          : isAuthorization // ignore: cast_nullable_to_non_nullable
              as bool?,
      userAgent: freezed == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_CreateQrCodePayloadCopyWith<$Res>
    implements $CreateQrCodePayloadCopyWith<$Res> {
  factory _$$_CreateQrCodePayloadCopyWith(_$_CreateQrCodePayload value,
          $Res Function(_$_CreateQrCodePayload) then) =
      __$$_CreateQrCodePayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String merchantPaymentId,
      Amount amount,
      String codeType,
      int? requestedAt,
      List<OrderItem>? orderItems,
      String? redirectType,
      String? redirectUrl,
      String? orderDescription,
      bool? isAuthorization,
      String? userAgent});

  @override
  $AmountCopyWith<$Res> get amount;
}

/// @nodoc
class __$$_CreateQrCodePayloadCopyWithImpl<$Res>
    extends _$CreateQrCodePayloadCopyWithImpl<$Res, _$_CreateQrCodePayload>
    implements _$$_CreateQrCodePayloadCopyWith<$Res> {
  __$$_CreateQrCodePayloadCopyWithImpl(_$_CreateQrCodePayload _value,
      $Res Function(_$_CreateQrCodePayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantPaymentId = null,
    Object? amount = null,
    Object? codeType = null,
    Object? requestedAt = freezed,
    Object? orderItems = freezed,
    Object? redirectType = freezed,
    Object? redirectUrl = freezed,
    Object? orderDescription = freezed,
    Object? isAuthorization = freezed,
    Object? userAgent = freezed,
  }) {
    return _then(_$_CreateQrCodePayload(
      merchantPaymentId: null == merchantPaymentId
          ? _value.merchantPaymentId
          : merchantPaymentId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
      codeType: null == codeType
          ? _value.codeType
          : codeType // ignore: cast_nullable_to_non_nullable
              as String,
      requestedAt: freezed == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      orderItems: freezed == orderItems
          ? _value._orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>?,
      redirectType: freezed == redirectType
          ? _value.redirectType
          : redirectType // ignore: cast_nullable_to_non_nullable
              as String?,
      redirectUrl: freezed == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDescription: freezed == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      isAuthorization: freezed == isAuthorization
          ? _value.isAuthorization
          : isAuthorization // ignore: cast_nullable_to_non_nullable
              as bool?,
      userAgent: freezed == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateQrCodePayload implements _CreateQrCodePayload {
  _$_CreateQrCodePayload(
      {required this.merchantPaymentId,
      required this.amount,
      this.codeType = 'ORDER_QR',
      this.requestedAt,
      final List<OrderItem>? orderItems,
      this.redirectType,
      this.redirectUrl,
      this.orderDescription,
      this.isAuthorization,
      this.userAgent})
      : _orderItems = orderItems;

  factory _$_CreateQrCodePayload.fromJson(Map<String, dynamic> json) =>
      _$$_CreateQrCodePayloadFromJson(json);

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
  /// Please pass the fixed value 'ORDER_QR'
  @override
  @JsonKey()
  final String codeType;

  /// Request timestamp(Unix epoch but not Unix millisecond epoch)
  @override
  final int? requestedAt;

  /// The user agent of the web browser from where transaction is originating
  final List<OrderItem>? _orderItems;

  /// The user agent of the web browser from where transaction is originating
  @override
  List<OrderItem>? get orderItems {
    final value = _orderItems;
    if (value == null) return null;
    if (_orderItems is EqualUnmodifiableListView) return _orderItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// This can either be 'WEB_LINK' if the payment is happening on web browser or 'APP_DEEP_LINK' if the payment is happening on your app
  @override
  final String? redirectType;

  /// The url of the page/app to open after the payment is complete, this can be a Web URL or a Deep link to your app
  @override
  final String? redirectUrl;

  /// Description of the Order,
  /// to see the link to check how it will show up
  /// https://www.paypay.ne.jp/opa/doc/jp/v1.0/files/OPA%20PayPay%E3%82%A2%E3%83%97%E3%83%AA%E3%81%A7%E3%81%AE%E8%A1%A8%E7%A4%BA.pdf#page=4
  /// string <= 255 characters
  @override
  final String? orderDescription;

  /// By default it will be false, please set true if the amount will be captured later (preauth and capture payment)
  @override
  final bool? isAuthorization;

  /// The user agent of the web browser from where transaction is originating
  @override
  final String? userAgent;

  @override
  String toString() {
    return 'CreateQrCodePayload(merchantPaymentId: $merchantPaymentId, amount: $amount, codeType: $codeType, requestedAt: $requestedAt, orderItems: $orderItems, redirectType: $redirectType, redirectUrl: $redirectUrl, orderDescription: $orderDescription, isAuthorization: $isAuthorization, userAgent: $userAgent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateQrCodePayload &&
            (identical(other.merchantPaymentId, merchantPaymentId) ||
                other.merchantPaymentId == merchantPaymentId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.codeType, codeType) ||
                other.codeType == codeType) &&
            (identical(other.requestedAt, requestedAt) ||
                other.requestedAt == requestedAt) &&
            const DeepCollectionEquality()
                .equals(other._orderItems, _orderItems) &&
            (identical(other.redirectType, redirectType) ||
                other.redirectType == redirectType) &&
            (identical(other.redirectUrl, redirectUrl) ||
                other.redirectUrl == redirectUrl) &&
            (identical(other.orderDescription, orderDescription) ||
                other.orderDescription == orderDescription) &&
            (identical(other.isAuthorization, isAuthorization) ||
                other.isAuthorization == isAuthorization) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      merchantPaymentId,
      amount,
      codeType,
      requestedAt,
      const DeepCollectionEquality().hash(_orderItems),
      redirectType,
      redirectUrl,
      orderDescription,
      isAuthorization,
      userAgent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateQrCodePayloadCopyWith<_$_CreateQrCodePayload> get copyWith =>
      __$$_CreateQrCodePayloadCopyWithImpl<_$_CreateQrCodePayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateQrCodePayloadToJson(
      this,
    );
  }
}

abstract class _CreateQrCodePayload implements CreateQrCodePayload {
  factory _CreateQrCodePayload(
      {required final String merchantPaymentId,
      required final Amount amount,
      final String codeType,
      final int? requestedAt,
      final List<OrderItem>? orderItems,
      final String? redirectType,
      final String? redirectUrl,
      final String? orderDescription,
      final bool? isAuthorization,
      final String? userAgent}) = _$_CreateQrCodePayload;

  factory _CreateQrCodePayload.fromJson(Map<String, dynamic> json) =
      _$_CreateQrCodePayload.fromJson;

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
  /// Please pass the fixed value 'ORDER_QR'
  String get codeType;
  @override

  /// Request timestamp(Unix epoch but not Unix millisecond epoch)
  int? get requestedAt;
  @override

  /// The user agent of the web browser from where transaction is originating
  List<OrderItem>? get orderItems;
  @override

  /// This can either be 'WEB_LINK' if the payment is happening on web browser or 'APP_DEEP_LINK' if the payment is happening on your app
  String? get redirectType;
  @override

  /// The url of the page/app to open after the payment is complete, this can be a Web URL or a Deep link to your app
  String? get redirectUrl;
  @override

  /// Description of the Order,
  /// to see the link to check how it will show up
  /// https://www.paypay.ne.jp/opa/doc/jp/v1.0/files/OPA%20PayPay%E3%82%A2%E3%83%97%E3%83%AA%E3%81%A7%E3%81%AE%E8%A1%A8%E7%A4%BA.pdf#page=4
  /// string <= 255 characters
  String? get orderDescription;
  @override

  /// By default it will be false, please set true if the amount will be captured later (preauth and capture payment)
  bool? get isAuthorization;
  @override

  /// The user agent of the web browser from where transaction is originating
  String? get userAgent;
  @override
  @JsonKey(ignore: true)
  _$$_CreateQrCodePayloadCopyWith<_$_CreateQrCodePayload> get copyWith =>
      throw _privateConstructorUsedError;
}
