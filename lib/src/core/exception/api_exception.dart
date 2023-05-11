import '../model/api_result.dart';

class ApiException implements Exception {
  final int statusCode;

  final String? code;

  final String? message;
  final String? codeId;

  final ApiResult? apiResult;

  ApiException({required this.statusCode, this.apiResult})
      : code = apiResult?.resultInfo.code,
        message = apiResult?.resultInfo.message,
        codeId = apiResult?.resultInfo.codeId;

  @override
  String toString() {
    return 'ApiException{statusCode: $statusCode, code: "$code", '
        'message: "$message", codeId: "$codeId"}';
  }
}
