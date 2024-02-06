import 'dart:io';

import 'package:http/http.dart';
import 'package:paypay_uo/paypay_uo.dart';
import 'package:test/test.dart';

import 'helper/moch_http_client.dart';
import 'helper/util.dart';

void main() {
  late PayPayClient paypayClient;
  late MockHttpClient mockHttpClient;
  final merchantPaymentId = "TEST_PREAUTH_ID123";
  final merchantCaptureId = "TESTMERCH_CAP_ID234";
  final paymentId = "TEST123";
  final merchantRevertId = "TESTMERCH_REV_ID345";
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

  test('Test Create auth payment', () async {
    final payload = CreatePaymentAuthPayload(
      merchantPaymentId: merchantPaymentId,
      requestedAt: PayPayClient.getRequestedAt(),
      userAuthorizationId: userAuthorizationId,
      amount: Amount(amount: 1, currency: 'JPY'),
    );

    /// expected http result
    mockHttpClient.addHandler('/v2/payments/preauthorize', 'POST',
        (request) async {
      var json = await getJson('payment_auth/created.json');
      return Response(json, HttpStatus.created);
    });
    final response = await paypayClient.paymentApi.createPaymentAuth(payload);
    expect(response.statusCode, HttpStatus.created);
    final apiResult = PayPayClient.convertResponseToApiResult(response);
    expect(apiResult.resultInfo.code, 'SUCCESS');
    expect(apiResult.data, isNotNull);
  });
  test('Test Capture Auth', () async {
    final payload = CapturePaymentAuthPayload(
      merchantPaymentId: merchantPaymentId,
      merchantCaptureId: merchantCaptureId,
      requestedAt: PayPayClient.getRequestedAt(),
      userAuthorizationId: userAuthorizationId,
      amount: Amount(amount: 1, currency: 'JPY'),
    );

    /// expected http result
    mockHttpClient.addHandler('/v2/payments/capture', 'POST', (request) async {
      var json = await getJson('payment_auth/captured.json');
      return Response(json, HttpStatus.created);
    });
    final response = await paypayClient.paymentApi.capturePaymentAuth(payload);
    expect(response.statusCode, HttpStatus.created);
    final apiResult = PayPayClient.convertResponseToApiResult(response);
    expect(apiResult.resultInfo.code, 'SUCCESS');
    expect(apiResult.data, isNotNull);
  });

  test('Test Revert Auth', () async {
    final payload = RevertAuthPayload(
      merchantRevertId: merchantRevertId,
      paymentId: paymentId,
      requestedAt: PayPayClient.getRequestedAt(),
    );

    /// expected http result
    mockHttpClient.addHandler('/v2/payments/preauthorize/revert', 'POST',
        (request) async {
      var json = await getJson('payment_auth/reverted.json');
      return Response(json, HttpStatus.created);
    });
    final response = await paypayClient.paymentApi.revertAuth(payload);
    expect(response.statusCode, HttpStatus.created);
    final apiResult = PayPayClient.convertResponseToApiResult(response);
    expect(apiResult.resultInfo.code, 'SUCCESS');
    expect(apiResult.data, isNotNull);
  });
}
