// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PayPayAuth {
  /// API KEY
  String get apiKey => throw _privateConstructorUsedError;

  /// API SECRET
  String get apiSecret => throw _privateConstructorUsedError;

  /// used as X-ASSUME-MERCHANT header, set empty if you will not POST
  String get merchantId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PayPayAuthCopyWith<PayPayAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayPayAuthCopyWith<$Res> {
  factory $PayPayAuthCopyWith(
          PayPayAuth value, $Res Function(PayPayAuth) then) =
      _$PayPayAuthCopyWithImpl<$Res, PayPayAuth>;
  @useResult
  $Res call({String apiKey, String apiSecret, String merchantId});
}

/// @nodoc
class _$PayPayAuthCopyWithImpl<$Res, $Val extends PayPayAuth>
    implements $PayPayAuthCopyWith<$Res> {
  _$PayPayAuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? apiSecret = null,
    Object? merchantId = null,
  }) {
    return _then(_value.copyWith(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      apiSecret: null == apiSecret
          ? _value.apiSecret
          : apiSecret // ignore: cast_nullable_to_non_nullable
              as String,
      merchantId: null == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthCopyWith<$Res> implements $PayPayAuthCopyWith<$Res> {
  factory _$$_AuthCopyWith(_$_Auth value, $Res Function(_$_Auth) then) =
      __$$_AuthCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String apiKey, String apiSecret, String merchantId});
}

/// @nodoc
class __$$_AuthCopyWithImpl<$Res>
    extends _$PayPayAuthCopyWithImpl<$Res, _$_Auth>
    implements _$$_AuthCopyWith<$Res> {
  __$$_AuthCopyWithImpl(_$_Auth _value, $Res Function(_$_Auth) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? apiSecret = null,
    Object? merchantId = null,
  }) {
    return _then(_$_Auth(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      apiSecret: null == apiSecret
          ? _value.apiSecret
          : apiSecret // ignore: cast_nullable_to_non_nullable
              as String,
      merchantId: null == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Auth implements _Auth {
  _$_Auth(
      {required this.apiKey,
      required this.apiSecret,
      required this.merchantId});

  /// API KEY
  @override
  final String apiKey;

  /// API SECRET
  @override
  final String apiSecret;

  /// used as X-ASSUME-MERCHANT header, set empty if you will not POST
  @override
  final String merchantId;

  @override
  String toString() {
    return 'PayPayAuth(apiKey: $apiKey, apiSecret: $apiSecret, merchantId: $merchantId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Auth &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.apiSecret, apiSecret) ||
                other.apiSecret == apiSecret) &&
            (identical(other.merchantId, merchantId) ||
                other.merchantId == merchantId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiKey, apiSecret, merchantId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthCopyWith<_$_Auth> get copyWith =>
      __$$_AuthCopyWithImpl<_$_Auth>(this, _$identity);
}

abstract class _Auth implements PayPayAuth {
  factory _Auth(
      {required final String apiKey,
      required final String apiSecret,
      required final String merchantId}) = _$_Auth;

  @override

  /// API KEY
  String get apiKey;
  @override

  /// API SECRET
  String get apiSecret;
  @override

  /// used as X-ASSUME-MERCHANT header, set empty if you will not POST
  String get merchantId;
  @override
  @JsonKey(ignore: true)
  _$$_AuthCopyWith<_$_Auth> get copyWith => throw _privateConstructorUsedError;
}
