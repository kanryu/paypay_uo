import 'package:paypay_uo/paypay_uo.dart';

void main() async {
  /// from your developer account
  final apiKey = 'YOUR API KEY';
  final apiSecret = 'YOUR API SECRET';
  final assumeMerchant = 'YOUR ASSUME MERCHANT';
  final auth = PayPayAuth(
      merchantId: assumeMerchant, apiSecret: apiSecret, apiKey: apiKey);
  final client = PayPayClient(apiMode: ApiMode.staging, auth: auth);
  final payload = CreateQrCodePayload(
    merchantPaymentId: PayPayClient.getTestMerchantPaymentId(),
    amount: Amount(amount: 1, currency: 'JPY'),
    codeType: 'ORDER_QR',
    requestedAt: PayPayClient.getRequestedAt(),
    orderItems: [
      OrderItem(
          name: "Cake",
          quantity: 1,
          unitPrice: Amount(amount: 20, currency: 'JPY'))
    ],
    redirectType: "WEB_LINK",
    redirectUrl: "http://foobar.com",
  );

  final response = await client.codeApi.createQRCode(payload);
  ApiResult result = PayPayClient.convertResponseToApiResult(response);
  print('code=${result.resultInfo.code}');
}
