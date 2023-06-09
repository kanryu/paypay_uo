import 'package:http/http.dart' as http;
import 'package:format/format.dart';

import 'package:paypay_uo/src/core/paypay_client.dart';
import 'package:paypay_uo/src/core/controller.dart';
import 'package:paypay_uo/src/core/model/cash_back_payload.dart';
import 'package:paypay_uo/src/core/model/reverse_cash_back_payload.dart';
import 'package:paypay_uo/src/constants/api_info.dart';

/// Cashback API controller
class Cashback extends Controller {
  Cashback({required PayPayClient main}) : super(main: main);

  /// Give cashback
  Future<http.Response> giveCashback(CashBackPayload payload) {
    final apiInfo = ApiInfo.createCashBackRequest();
    final uri = main.uri.apiUri.replace(path: apiInfo.path);
    final data = payload.toJson();
    final requestBody = requestDataToJson(data);
    main.logger.i(
        'PayPay API.createCashBackRequest(merchantCashbackId=${payload.merchantCashbackId})');
    main.logger.d('request body: $requestBody');
    return doCall(apiInfo, uri, requestBody: requestBody);
  }

  /// Check cashback details
  ///
  /// [merchantPaymentId] The unique payment transaction id provided by merchant
  Future<http.Response> getCashbackDetails(String merchantCashbackId) {
    final apiInfo = ApiInfo.getCashbackDetails();
    final entrypoint =
        apiInfo.path.format({'merchantCashbackId': merchantCashbackId});
    final uri = main.uri.apiUri.replace(path: entrypoint);
    main.logger.i(
        'PayPay API.getCashbackDetails(merchantCashbackId=$merchantCashbackId)');
    return doCall(apiInfo, uri);
  }

  /// Reversal cashback
  Future<http.Response> reverseCashBack(ReverseCashBackPayload payload) {
    final apiInfo = ApiInfo.createReverseCashBackRequest();
    final uri = main.uri.apiUri.replace(path: apiInfo.path);
    final data = payload.toJson();
    final requestBody = requestDataToJson(data);
    main.logger.i(
        'PayPay API.createReverseCashBackRequest(merchantCashbackId=${payload.merchantCashbackId})');
    main.logger.d('request body: $requestBody');
    return doCall(apiInfo, uri, requestBody: requestBody);
  }

  /// Check reversal cashback details
  ///
  /// [merchantPaymentId] The unique payment transaction id provided by merchant
  Future<http.Response> getReversalCashbackDetails(
      String merchantCashbackReversalId, String merchantCashbackId) {
    final apiInfo = ApiInfo.getReversedCashBackDetails();
    final entrypoint = apiInfo.path.format({
      'merchantCashbackReversalId': merchantCashbackReversalId,
      'merchantCashbackId': merchantCashbackId,
    });
    final uri = main.uri.apiUri.replace(path: entrypoint);
    main.logger.i(
        'PayPay API.getReversedCashBackDetails(merchantCashbackReversalId=$merchantCashbackReversalId, merchantCashbackId=$merchantCashbackId)');
    return doCall(apiInfo, uri);
  }
}
