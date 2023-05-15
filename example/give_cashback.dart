import 'package:paypay_uo/paypay_uo.dart';

void main() async {
  final apiKey = 'YOUR API KEY';
  final apiSecret = 'YOUR API SECRET';
  final assumeMerchant = 'YOUR ASSUME MERCHANT';
  final merchantCashbackId = "testXXXXXXXXXXXXXXX123";
  final userAuthorizationId = '<USER_AUTHORIZATION_IDENTIFIER>';
  final auth = PayPayAuth(
      merchantId: assumeMerchant, apiSecret: apiSecret, apiKey: apiKey);
  final client = PayPayClient(apiMode: ApiMode.staging, auth: auth);
  final payload = CashBackPayload(
    merchantCashbackId: merchantCashbackId,
    requestedAt: PayPayClient.getRequestdAt(),
    userAuthorizationId: userAuthorizationId,
    amount: Amount(amount: 1, currency: 'JPY'),
  );

  final response = await client.cashBackApi.giveCashback(payload);
  ApiResult result = PayPayClient.convertResponseToApiResult(response);
  print('code=${result.resultInfo.code}');
}
