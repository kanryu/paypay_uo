import 'package:uuid/uuid.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'paypay_client.dart';
import 'package:paypay_uo/src/constants/api_info.dart';
import 'package:paypay_uo/src/core/exception/api_exception.dart';

class Controller {
  Controller(
      {required this.main,
      this.contentType = 'application/json;charset=UTF-8'});
  final PayPayClient main;
  final String contentType;

  /// Generic HTTP calls
  ///
  /// [apiInfo] is how to access of the API
  /// [uri] is URL
  /// [requestBody] is payload json string to POST
  /// [additionalHeaders] is http headers you want to add
  Future<Response> doCall(ApiInfo apiInfo, Uri uri,
      {String? requestBody, Map<String, String>? additionalHeaders}) async {
    var headers = hmacCallOpts(apiInfo.method, uri.path,
        contentType: requestBody != null ? contentType : 'empty',
        requestBody: requestBody);
    if (additionalHeaders != null) {
      headers.addAll(additionalHeaders);
    }
    if (main.auth.merchantId.isNotEmpty) {
      headers['X-ASSUME-MERCHANT'] = main.auth.merchantId;
    }
    Response response;
    final httpMethod = apiInfo.method.toLowerCase();
    switch (httpMethod) {
      case 'post':
        response =
            await main.http.post(uri, headers: headers, body: requestBody);
        break;
      case 'delete':
        response = await main.http.delete(uri, headers: headers);
        break;
      case 'get':
      default:
        response = await main.http.get(uri, headers: headers);
        break;
    }
    parseResultInfo(apiInfo, response);
    return response;
  }

  String requestDataToJson(Map<String, dynamic> data) =>
      jsonEncode(data).replaceAll("\n", "");

  void parseResultInfo(apiInfo, Response response) {
    if (response.statusCode >= 500) {
      throw ApiException(statusCode: response.statusCode);
    }
    if (response.statusCode >= 400) {
      final apiResult = PayPayClient.convertResponseToApiResult(response);
      throw ApiException(statusCode: response.statusCode, apiResult: apiResult);
    }
  }

  /// Get Hmac headers
  Map<String, String> hmacCallOpts(String httpMethod, String paypayEndpoint,
      {String contentType = 'empty', String? requestBody}) {
    final authStr = payPayEncryptHeader(main.auth.apiKey, main.auth.apiSecret,
        httpMethod, paypayEndpoint, contentType,
        requestBody: requestBody);

    final postOpts = <String, String>{
      'Content-Type': contentType,
      'Authorization': authStr
    };
    return postOpts;
  }

  /// Returns Authorization header to use in HTTP calls
  ///
  /// [apiKey] is API Key/Client ID
  /// [apiSecret] is API Secret/Secret ID
  /// [httpMethod] is HTTP method used. ["GET","POST","DELETE",etc.]
  /// [requestUri] is API endpoint being accessed
  /// [contentType] is Content Type of call. E.g. "application/json;charset=UTF-8". Leave 'empty' on GET calls.
  /// [requestBody] is The data to be sent to the server.
  /// returns string Value to be passed in authorization header
  String payPayEncryptHeader(
    String apiKey,
    String apiSecret,
    String httpMethod,
    String requestUri,
    String contentType, {
    String? requestBody,
    String? epoch,
    String? nonce,
  }) {
    if (epoch == null) {
      final requestTimeStamp = DateTime.now().millisecondsSinceEpoch.toString();
      epoch = requestTimeStamp.substring(
          0,
          requestTimeStamp.length -
              3); // unix epoch of not milliseconds but seconds
    }
    if (nonce == null) {
      final uuid = Uuid().v4();
      nonce = uuid.substring(uuid.length - 8); //Fixed value for sample
    }

    var bodyHash = 'empty';
    if (contentType != 'empty') {
      // MD5 hash of contentType and requestBody
      final md5sum = md5.convert(utf8.encode('$contentType$requestBody'));
      bodyHash = base64.encode(md5sum.bytes);
    }
    final signatureRawDataList = List<dynamic>.from(
        [requestUri, httpMethod, nonce, epoch, contentType, bodyHash]);
    final hmacData = signatureRawDataList.join("\n");

    // Create hmac-sha256
    final hmacSha256 = Hmac(sha256, utf8.encode(apiSecret));
    final rawHmac = hmacSha256.convert(utf8.encode(hmacData));
    final macData = base64.encode(rawHmac.bytes);
    final headerList = List<String>.from(
        ['hmac OPA-Auth', apiKey, macData, nonce, epoch, bodyHash]);

    return headerList.join(":");
  }
}
