import 'package:http/http.dart' as http;
import 'package:format/format.dart';

import 'package:paypay_uo/src/core/paypay_client.dart';
import 'package:paypay_uo/src/core/controller.dart';
import 'package:paypay_uo/src/core/model/create_qr_code_payload.dart';
import 'package:paypay_uo/src/constants/api_info.dart';

/// Qr CODE API controller
class Code extends Controller {
  Code({required PayPayClient main}) : super(main: main);

  /// Create a QR Code to receive payments.
  Future<http.Response> createQRCode(CreateQrCodePayload payload) {
    final apiInfo = ApiInfo.createDynamicQRCode();
    final uri = main.uri.apiUri.replace(path: apiInfo.path);
    final data = payload.toJson();
    final requestBody = requestDataToJson(data);

    main.logger.i(
        'PayPay API.createDynamicQRCode(merchantPaymentId=${payload.merchantPaymentId})');
    main.logger.d('request body: $requestBody');
    return doCall(apiInfo, uri, requestBody: requestBody);
  }

  /// Fetches Payment details
  ///
  /// [merchantPaymentId] is the unique payment transaction id provided by merchant
  Future<http.Response> getPaymentDetails(String merchantPaymentId) {
    final apiInfo = ApiInfo.getQRPaymentDetails();
    final entrypoint = apiInfo.path.format({
      'merchantPaymentId': merchantPaymentId,
    });
    final uri = main.uri.apiUri.replace(path: entrypoint);
    main.logger.i(
        'PayPay API.getQRPaymentDetails(merchantPaymentId=$merchantPaymentId)');
    return doCall(apiInfo, uri);
  }

  /// Invalidates QR Code for payment
  Future<http.Response> deleteQRCode(String codeId) {
    final apiInfo = ApiInfo.deleteDynamicQRCode();
    final entrypoint = apiInfo.path.format({
      'codeId': codeId,
    });
    final uri = main.uri.apiUri.replace(path: entrypoint);
    main.logger.i('PayPay API.deleteDynamicQRCode(codeId=$codeId)');
    return doCall(apiInfo, uri);
  }
}
