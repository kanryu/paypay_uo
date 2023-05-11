import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paypay_uo/src/core/paypay_client.dart';

part 'api_uri.freezed.dart';

/// A set of URLs for each mode of operation of the API
@freezed
class ApiUri with _$ApiUri {
  factory ApiUri({required Uri apiUri, required Uri docUri}) = _Url;

  factory ApiUri.perfMode() => ApiUri(
      apiUri: Uri.https('perf-api.paypay.ne.jp', '/v2'),
      docUri: Uri.https('developer.paypay.ne.jp', '/develop/resolve'));

  factory ApiUri.staging() => ApiUri(
      apiUri: Uri.https('stg-api.sandbox.paypay.ne.jp', '/v2'),
      docUri: Uri.https('developer.paypay.ne.jp', '/develop/resolve'));

  factory ApiUri.test() => ApiUri(
      apiUri: Uri.http('localhost:8080', '/v2'),
      docUri: Uri.https('developer.paypay.ne.jp', '/develop/resolve'));

  factory ApiUri.production() => ApiUri(
      apiUri: Uri.https('api.paypay.ne.jp', '/v2'),
      docUri: Uri.https('developer.paypay.ne.jp', '/develop/resolve'));

  static ApiUri getUri(ApiMode mode) {
    switch (mode) {
      case ApiMode.perfMode:
        return ApiUri.perfMode();
      case ApiMode.staging:
        return ApiUri.staging();
      case ApiMode.test:
        return ApiUri.test();
      case ApiMode.production:
        return ApiUri.production();
    }
  }
}
