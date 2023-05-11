// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultInfo _$ResultInfoFromJson(Map<String, dynamic> json) {
  return _ResultInfo.fromJson(json);
}

/// @nodoc
mixin _$ResultInfo {
  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get codeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultInfoCopyWith<ResultInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultInfoCopyWith<$Res> {
  factory $ResultInfoCopyWith(
          ResultInfo value, $Res Function(ResultInfo) then) =
      _$ResultInfoCopyWithImpl<$Res, ResultInfo>;
  @useResult
  $Res call({String code, String message, String codeId});
}

/// @nodoc
class _$ResultInfoCopyWithImpl<$Res, $Val extends ResultInfo>
    implements $ResultInfoCopyWith<$Res> {
  _$ResultInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? codeId = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      codeId: null == codeId
          ? _value.codeId
          : codeId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultInfoCopyWith<$Res>
    implements $ResultInfoCopyWith<$Res> {
  factory _$$_ResultInfoCopyWith(
          _$_ResultInfo value, $Res Function(_$_ResultInfo) then) =
      __$$_ResultInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String message, String codeId});
}

/// @nodoc
class __$$_ResultInfoCopyWithImpl<$Res>
    extends _$ResultInfoCopyWithImpl<$Res, _$_ResultInfo>
    implements _$$_ResultInfoCopyWith<$Res> {
  __$$_ResultInfoCopyWithImpl(
      _$_ResultInfo _value, $Res Function(_$_ResultInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? codeId = null,
  }) {
    return _then(_$_ResultInfo(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      codeId: null == codeId
          ? _value.codeId
          : codeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultInfo implements _ResultInfo {
  _$_ResultInfo(
      {required this.code, required this.message, required this.codeId});

  factory _$_ResultInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ResultInfoFromJson(json);

  @override
  final String code;
  @override
  final String message;
  @override
  final String codeId;

  @override
  String toString() {
    return 'ResultInfo(code: $code, message: $message, codeId: $codeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultInfo &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.codeId, codeId) || other.codeId == codeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, codeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultInfoCopyWith<_$_ResultInfo> get copyWith =>
      __$$_ResultInfoCopyWithImpl<_$_ResultInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultInfoToJson(
      this,
    );
  }
}

abstract class _ResultInfo implements ResultInfo {
  factory _ResultInfo(
      {required final String code,
      required final String message,
      required final String codeId}) = _$_ResultInfo;

  factory _ResultInfo.fromJson(Map<String, dynamic> json) =
      _$_ResultInfo.fromJson;

  @override
  String get code;
  @override
  String get message;
  @override
  String get codeId;
  @override
  @JsonKey(ignore: true)
  _$$_ResultInfoCopyWith<_$_ResultInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiResult _$ApiResultFromJson(Map<String, dynamic> json) {
  return _ApiResult.fromJson(json);
}

/// @nodoc
mixin _$ApiResult {
  ResultInfo get resultInfo => throw _privateConstructorUsedError;
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResultCopyWith<ApiResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResultCopyWith<$Res> {
  factory $ApiResultCopyWith(ApiResult value, $Res Function(ApiResult) then) =
      _$ApiResultCopyWithImpl<$Res, ApiResult>;
  @useResult
  $Res call({ResultInfo resultInfo, Map<String, dynamic>? data});

  $ResultInfoCopyWith<$Res> get resultInfo;
}

/// @nodoc
class _$ApiResultCopyWithImpl<$Res, $Val extends ApiResult>
    implements $ApiResultCopyWith<$Res> {
  _$ApiResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultInfo = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      resultInfo: null == resultInfo
          ? _value.resultInfo
          : resultInfo // ignore: cast_nullable_to_non_nullable
              as ResultInfo,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultInfoCopyWith<$Res> get resultInfo {
    return $ResultInfoCopyWith<$Res>(_value.resultInfo, (value) {
      return _then(_value.copyWith(resultInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResultCopyWith<$Res> implements $ApiResultCopyWith<$Res> {
  factory _$$_ApiResultCopyWith(
          _$_ApiResult value, $Res Function(_$_ApiResult) then) =
      __$$_ApiResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResultInfo resultInfo, Map<String, dynamic>? data});

  @override
  $ResultInfoCopyWith<$Res> get resultInfo;
}

/// @nodoc
class __$$_ApiResultCopyWithImpl<$Res>
    extends _$ApiResultCopyWithImpl<$Res, _$_ApiResult>
    implements _$$_ApiResultCopyWith<$Res> {
  __$$_ApiResultCopyWithImpl(
      _$_ApiResult _value, $Res Function(_$_ApiResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultInfo = null,
    Object? data = freezed,
  }) {
    return _then(_$_ApiResult(
      resultInfo: null == resultInfo
          ? _value.resultInfo
          : resultInfo // ignore: cast_nullable_to_non_nullable
              as ResultInfo,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResult implements _ApiResult {
  _$_ApiResult({required this.resultInfo, final Map<String, dynamic>? data})
      : _data = data;

  factory _$_ApiResult.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResultFromJson(json);

  @override
  final ResultInfo resultInfo;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ApiResult(resultInfo: $resultInfo, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResult &&
            (identical(other.resultInfo, resultInfo) ||
                other.resultInfo == resultInfo) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, resultInfo, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResultCopyWith<_$_ApiResult> get copyWith =>
      __$$_ApiResultCopyWithImpl<_$_ApiResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResultToJson(
      this,
    );
  }
}

abstract class _ApiResult implements ApiResult {
  factory _ApiResult(
      {required final ResultInfo resultInfo,
      final Map<String, dynamic>? data}) = _$_ApiResult;

  factory _ApiResult.fromJson(Map<String, dynamic> json) =
      _$_ApiResult.fromJson;

  @override
  ResultInfo get resultInfo;
  @override
  Map<String, dynamic>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResultCopyWith<_$_ApiResult> get copyWith =>
      throw _privateConstructorUsedError;
}
