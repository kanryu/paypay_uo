import 'package:http/http.dart' as http;

import 'package:paypay_uo/src/core/paypay_client.dart';
import 'package:paypay_uo/src/core/controller.dart';
import 'package:paypay_uo/src/constants/api_info.dart';

/// Wallet API controller
class Wallet extends Controller {
  Wallet({required PayPayClient main}) : super(main: main);

  /// Check if user has enough balance to make a payment
  Future<http.Response> checkWalletBalance(
      {required String userAuthorizationId,
      required int amount,
      required String currency,
      String? productType}) {
    final data = <String, dynamic>{
      'userAuthorizationId': userAuthorizationId,
      'amount': amount.toString(),
      'currency': currency,
    };
    if (productType != null) {
      if (productType == "VIRTUAL_BONUS_INVESTMENT" ||
          productType == "PAY_LATER_REPAYMENT") {
        data['productType'] = productType;
      } else {
        throw Exception("Invalid Direct Debit Product Type");
      }
    }
    final apiInfo = ApiInfo.checkWalletBalance();
    final uri =
        main.uri.apiUri.replace(path: apiInfo.path, queryParameters: data);
    main.logger.i(
        'PayPay API.checkWalletBalance(userAuthorizationId=$userAuthorizationId, amount=$amount, currency=$currency, productType=$productType)');
    return doCall(apiInfo, uri);
  }
}
