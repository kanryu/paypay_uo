import 'dart:io';

import 'package:test/test.dart';
import 'package:http/http.dart';
import 'package:paypay_uo/paypay_uo.dart';
import 'helper/moch_http_client.dart';
import 'helper/util.dart';

void main() {
  late PayPayClient paypayClient;
  late MockHttpClient mockHttpClient;
  final merchantPaymentId = "TESTMERCH_PAY_ID123";
  final userAuthorizationId = '<USER_AUTHORIZATION_IDENTIFIER>';

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

  test('Test Create direct debit payment', () async {
    final payload = CreatePaymentPayload(
      merchantPaymentId: merchantPaymentId,
      requestedAt: PayPayClient.getRequestdAt(),
      userAuthorizationId: userAuthorizationId,
      amount: Amount(amount: 1, currency: 'JPY'),
    );

    /// expected http result
    mockHttpClient.addHandler('/v2/payments', 'POST', (request) async {
      var json = await getJson('payment/created.json');
      return Response(json, HttpStatus.created);
    });
    final response = await paypayClient.paymentApi.createPayment(payload);
    expect(response.statusCode, HttpStatus.created);
    final apiResult = PayPayClient.convertResponseToApiResult(response);
    expect(apiResult.resultInfo.code, 'SUCCESS');
    expect(apiResult.data, isNotNull);
  });

  test('Test Cancel DD payment', () async {
    /// expected http result
    mockHttpClient.addHandler('/v2/payments/$merchantPaymentId', 'DELETE',
        (request) async {
      var json = await getJson('payment/canceled.json');
      return Response(json, HttpStatus.created);
    });
    final response =
        await paypayClient.paymentApi.cancelPayment(merchantPaymentId);
    expect(response.statusCode, HttpStatus.created);
    final apiResult = PayPayClient.convertResponseToApiResult(response);
    expect(apiResult.resultInfo.code, 'REQUEST_ACCEPTED');
  });
}
