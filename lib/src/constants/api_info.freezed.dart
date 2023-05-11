// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiInfo {
  String get apiName => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiInfoCopyWith<ApiInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiInfoCopyWith<$Res> {
  factory $ApiInfoCopyWith(ApiInfo value, $Res Function(ApiInfo) then) =
      _$ApiInfoCopyWithImpl<$Res, ApiInfo>;
  @useResult
  $Res call({String apiName, String path, String method});
}

/// @nodoc
class _$ApiInfoCopyWithImpl<$Res, $Val extends ApiInfo>
    implements $ApiInfoCopyWith<$Res> {
  _$ApiInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiName = null,
    Object? path = null,
    Object? method = null,
  }) {
    return _then(_value.copyWith(
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PayPayApiInfoCopyWith<$Res>
    implements $ApiInfoCopyWith<$Res> {
  factory _$$_PayPayApiInfoCopyWith(
          _$_PayPayApiInfo value, $Res Function(_$_PayPayApiInfo) then) =
      __$$_PayPayApiInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String apiName, String path, String method});
}

/// @nodoc
class __$$_PayPayApiInfoCopyWithImpl<$Res>
    extends _$ApiInfoCopyWithImpl<$Res, _$_PayPayApiInfo>
    implements _$$_PayPayApiInfoCopyWith<$Res> {
  __$$_PayPayApiInfoCopyWithImpl(
      _$_PayPayApiInfo _value, $Res Function(_$_PayPayApiInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiName = null,
    Object? path = null,
    Object? method = null,
  }) {
    return _then(_$_PayPayApiInfo(
      apiName: null == apiName
          ? _value.apiName
          : apiName // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PayPayApiInfo implements _PayPayApiInfo {
  _$_PayPayApiInfo(
      {required this.apiName, required this.path, required this.method});

  @override
  final String apiName;
  @override
  final String path;
  @override
  final String method;

  @override
  String toString() {
    return 'ApiInfo(apiName: $apiName, path: $path, method: $method)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PayPayApiInfo &&
            (identical(other.apiName, apiName) || other.apiName == apiName) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.method, method) || other.method == method));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiName, path, method);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PayPayApiInfoCopyWith<_$_PayPayApiInfo> get copyWith =>
      __$$_PayPayApiInfoCopyWithImpl<_$_PayPayApiInfo>(this, _$identity);
}

abstract class _PayPayApiInfo implements ApiInfo {
  factory _PayPayApiInfo(
      {required final String apiName,
      required final String path,
      required final String method}) = _$_PayPayApiInfo;

  @override
  String get apiName;
  @override
  String get path;
  @override
  String get method;
  @override
  @JsonKey(ignore: true)
  _$$_PayPayApiInfoCopyWith<_$_PayPayApiInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
