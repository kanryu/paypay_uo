import 'dart:io';

import 'package:http/http.dart';
import 'package:paypay_uo/paypay_uo.dart';
import 'package:test/test.dart';

import 'helper/moch_http_client.dart';
import 'helper/util.dart';

void main() {
  late PayPayClient paypayClient;
  late MockHttpClient mockHttpClient;
  final merchantPaymentId = "TESTMERCH_PAY_ID123";
  final merchantRefundId = "TESTMERCH_REFUND_ID234";
  final paymentId = "TESPAYMENT_ID345";
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

  test('Test Create pending payment', () async {
    final payload = CreatePendingPaymentPayload(
      merchantPaymentId: merchantPaymentId,
      requestedAt: PayPayClient.getRequestedAt(),
      userAuthorizationId: userAuthorizationId,
      amount: Amount(amount: 1, currency: 'JPY'),
    );

    /// expected http result
    mockHttpClient.addHandler('/v1/requestOrder', 'POST', (request) async {
      var json = await getJson('pending_payment/created.json');
      return Response(json, HttpStatus.created);
    });
    final response =
        await paypayClient.paymentApi.createPendingPayment(payload);
    expect(response.statusCode, HttpStatus.created);
    final apiResult = PayPayClient.convertResponseToApiResult(response);
    expect(apiResult.resultInfo.code, 'SUCCESS');
    expect(apiResult.data, isNotNull);
  });

  test('Tests Pending payment details', () async {
    /// expected http result
    mockHttpClient.addHandler('/v1/requestOrder/$merchantPaymentId', 'GET',
        (request) async {
      var json = await getJson('pending_payment/get_detail.json');
      return Response(json, HttpStatus.created);
    });
    final response = await paypayClient.paymentApi
        .getPaymentDetails(merchantPaymentId, paymentType: 'pending');
    expect(response.statusCode, HttpStatus.created);
    final apiResult = PayPayClient.convertResponseToApiResult(response);
    expect(apiResult.resultInfo.code, 'SUCCESS');
  });

  test('Test Cancel pending payment', () async {
    /// expected http result
    mockHttpClient.addHandler('/v1/requestOrder/$merchantPaymentId', 'DELETE',
        (request) async {
      var json = await getJson('pending_payment/canceled.json');
      return Response(json, HttpStatus.ok);
    });
    final response = await paypayClient.paymentApi
        .cancelPayment(merchantPaymentId, paymentType: 'pending');
    expect(response.statusCode, HttpStatus.ok);
    final apiResult = PayPayClient.convertResponseToApiResult(response);
    expect(apiResult.resultInfo.code, 'REQUEST_ACCEPTED');
  });
  test('Test Refund', () async {
    final payload = RefundPaymentPayload(
      merchantRefundId: merchantRefundId,
      paymentId: paymentId,
      requestedAt: PayPayClient.getRequestedAt(),
      amount: Amount(amount: 1, currency: 'JPY'),
    );

    /// expected http result
    mockHttpClient.addHandler('/v2/refunds', 'POST', (request) async {
      var json = await getJson('pending_payment/refund.json');
      return Response(json, HttpStatus.created);
    });
    final response = await paypayClient.paymentApi.refundPayment(payload);
    expect(response.statusCode, HttpStatus.created);
    final apiResult = PayPayClient.convertResponseToApiResult(response);
    expect(apiResult.resultInfo.code, 'SUCCESS');
    expect(apiResult.data, isNotNull);
  });

  test('Test Refund Details', () async {
    /// expected http result
    mockHttpClient.addHandler('/v2/refunds/$merchantRefundId', 'GET',
        (request) async {
      var json = await getJson('pending_payment/get_refund_detail.json');
      return Response(json, HttpStatus.ok);
    });
    final response =
        await paypayClient.paymentApi.getRefundDetails(merchantRefundId);
    expect(response.statusCode, HttpStatus.ok);
    final apiResult = PayPayClient.convertResponseToApiResult(response);
    expect(apiResult.resultInfo.code, 'SUCCESS');
  });
}
