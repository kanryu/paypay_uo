// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_uri.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiUri {
  Uri get apiUri => throw _privateConstructorUsedError;
  Uri get docUri => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiUriCopyWith<ApiUri> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiUriCopyWith<$Res> {
  factory $ApiUriCopyWith(ApiUri value, $Res Function(ApiUri) then) =
      _$ApiUriCopyWithImpl<$Res, ApiUri>;
  @useResult
  $Res call({Uri apiUri, Uri docUri});
}

/// @nodoc
class _$ApiUriCopyWithImpl<$Res, $Val extends ApiUri>
    implements $ApiUriCopyWith<$Res> {
  _$ApiUriCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiUri = null,
    Object? docUri = null,
  }) {
    return _then(_value.copyWith(
      apiUri: null == apiUri
          ? _value.apiUri
          : apiUri // ignore: cast_nullable_to_non_nullable
              as Uri,
      docUri: null == docUri
          ? _value.docUri
          : docUri // ignore: cast_nullable_to_non_nullable
              as Uri,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UrlCopyWith<$Res> implements $ApiUriCopyWith<$Res> {
  factory _$$_UrlCopyWith(_$_Url value, $Res Function(_$_Url) then) =
      __$$_UrlCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uri apiUri, Uri docUri});
}

/// @nodoc
class __$$_UrlCopyWithImpl<$Res> extends _$ApiUriCopyWithImpl<$Res, _$_Url>
    implements _$$_UrlCopyWith<$Res> {
  __$$_UrlCopyWithImpl(_$_Url _value, $Res Function(_$_Url) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiUri = null,
    Object? docUri = null,
  }) {
    return _then(_$_Url(
      apiUri: null == apiUri
          ? _value.apiUri
          : apiUri // ignore: cast_nullable_to_non_nullable
              as Uri,
      docUri: null == docUri
          ? _value.docUri
          : docUri // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$_Url implements _Url {
  _$_Url({required this.apiUri, required this.docUri});

  @override
  final Uri apiUri;
  @override
  final Uri docUri;

  @override
  String toString() {
    return 'ApiUri(apiUri: $apiUri, docUri: $docUri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Url &&
            (identical(other.apiUri, apiUri) || other.apiUri == apiUri) &&
            (identical(other.docUri, docUri) || other.docUri == docUri));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiUri, docUri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UrlCopyWith<_$_Url> get copyWith =>
      __$$_UrlCopyWithImpl<_$_Url>(this, _$identity);
}

abstract class _Url implements ApiUri {
  factory _Url({required final Uri apiUri, required final Uri docUri}) = _$_Url;

  @override
  Uri get apiUri;
  @override
  Uri get docUri;
  @override
  @JsonKey(ignore: true)
  _$$_UrlCopyWith<_$_Url> get copyWith => throw _privateConstructorUsedError;
}
