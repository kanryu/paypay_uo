// ignore: unnecessary_import
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';
part 'api_result.g.dart';

@freezed
class ResultInfo with _$ResultInfo {
  factory ResultInfo(
      {required String code,
      required String message,
      required String codeId}) = _ResultInfo;

  factory ResultInfo.fromJson(Map<String, dynamic> json) =>
      _$ResultInfoFromJson(json);
}

/// Decoded return data from PayPay API server
@freezed
class ApiResult with _$ApiResult {
  factory ApiResult(
      {required ResultInfo resultInfo,
      Map<String, dynamic>? data}) = _ApiResult;

  factory ApiResult.fromJson(Map<String, dynamic> json) =>
      _$ApiResultFromJson(json);
}
