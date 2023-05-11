import 'dart:io';

import 'package:test/test.dart';
import 'package:http/http.dart';
import 'package:paypay_uo/paypay_uo.dart';
import 'helper/moch_http_client.dart';
import 'helper/util.dart';

void main() {
  late PayPayClient paypayClient;
  late MockHttpClient mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient(MockHttpClientHandler());

    final apiKey = 'APIKeyGenerated';
    final apiSecret = 'APIKeySecretGenerated/wsTHk=';
    final assumeMerchant = 'APImarchantId';
    final auth = PayPayAuth(
        merchantId: assumeMerchant, apiSecret: apiSecret, apiKey: apiKey);
    paypayClient =
        PayPayClient(apiMode: ApiMode.test, auth: auth, client: mockHttpClient);
  });

  test('Test create Qr Code', () async {
    final payload = CreateQrCodePayload(
      merchantPaymentId: 'TESTMERCH_PAY_ID645ae52f1378b',
      amount: Amount(amount: 1, currency: 'JPY'),
      codeType: 'ORDER_QR',
      requestedAt: 1683678537,
      orderItems: [
        OrderItem(
            name: "Cake",
            quantity: 1,
            unitPrice: Amount(amount: 20, currency: 'JPY'))
      ],
      redirectType: "WEB_LINK",
      redirectUrl: "http://foobar.com",
    );

    /// expected http result
    mockHttpClient.addHandler('/v2/codes', 'POST', (request) async {
      var json = await getJson('qr_code/created.json');
      return Response(json, HttpStatus.created);
    });
    final response = await paypayClient.codeApi.createQRCode(payload);
    expect(response.statusCode, HttpStatus.created);
    final apiResult = PayPayClient.convertResponseToApiResult(response);
    expect(apiResult.resultInfo.code, 'SUCCESS');
    expect(
        apiResult.data!['merchantPaymentId'], 'TESTMERCH_PAY_ID645ae52f1378b');
    expect(apiResult.data!['url'],
        'https://qr-stg.sandbox.paypay.ne.jp/28180104K49Uf6dJ1RQ4ObvO');
  });
  test('Test delete Qr Code', () async {
    final codeId = '04-K49Uf6dJ1RQ4ObvO'; // codeId of 'qr_code.created.json'
    /// expected http result
    mockHttpClient.addHandler('/v2/codes/$codeId', 'DELETE', (request) async {
      var json = await getJson('qr_code/deleted.json');
      return Response(json, HttpStatus.ok);
    });
    final response = await paypayClient.codeApi.deleteQRCode(codeId);
    final apiResult = PayPayClient.convertResponseToApiResult(response);
    expect(apiResult.resultInfo.code, 'SUCCESS');
  });
}
