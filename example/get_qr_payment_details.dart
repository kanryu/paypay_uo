import 'package:paypay_uo/paypay_uo.dart';

void main() async {
  /// from your developer account
  final apiKey = 'YOUR API KEY';
  final apiSecret = 'YOUR API SECRET';
  final assumeMerchant = 'YOUR ASSUME MERCHANT';
  final merchantPaymentId = 'TESTMERCH_PAY_123';
  final auth = PayPayAuth(
      merchantId: assumeMerchant, apiSecret: apiSecret, apiKey: apiKey);
  final client = PayPayClient(apiMode: ApiMode.staging, auth: auth);

  final response = await client.codeApi.getPaymentDetails(merchantPaymentId);
  print(response.statusCode);
  print(response.body);
  ApiResult result = PayPayClient.convertResponseToApiResult(response);
  print(result.resultInfo.code);
}
