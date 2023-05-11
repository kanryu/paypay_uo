import 'dart:io';

import 'package:test/test.dart';
import 'package:http/http.dart';
import 'package:paypay_uo/paypay_uo.dart';
import 'helper/moch_http_client.dart';
import 'helper/util.dart';

void main() {
  late PayPayClient paypayClient;
  late MockHttpClient mockHttpClient;
  final merchantCashbackId = "testXXXXXXXXXXXXXXX123";
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

  test('Test give cashback', () async {
    final payload = CashBackPayload(
      merchantCashbackId: merchantCashbackId,
      requestedAt: PayPayClient.getRequestdAt(),
      userAuthorizationId: userAuthorizationId,
      amount: Amount(amount: 1, currency: 'JPY'),
    );

    /// expected http result
    mockHttpClient.addHandler('/v2/cashback', 'POST', (request) async {
      var json = await getJson('cashback/created.json');
      return Response(json, HttpStatus.created);
    });
    final response = await paypayClient.cashBackApi.giveCashback(payload);
    expect(response.statusCode, HttpStatus.created);
    final apiResult = PayPayClient.convertResponseToApiResult(response);
    expect(apiResult.resultInfo.code, 'REQUEST_ACCEPTED');
  });

  test('Tests getCashbackDetails when code is SUCCESS', () async {
    final merchantCashbackId = "test-success";

    /// expected http result
    mockHttpClient.addHandler('/v2/cashback/$merchantCashbackId', 'GET',
        (request) async {
      var json = await getJson('cashback/get_detail_success.json');
      return Response(json, HttpStatus.created);
    });
    final response =
        await paypayClient.cashBackApi.getCashbackDetails(merchantCashbackId);
    expect(response.statusCode, HttpStatus.created);
    final apiResult = PayPayClient.convertResponseToApiResult(response);
    expect(apiResult.resultInfo.code, 'SUCCESS');
    expect(apiResult.data!['cashbackId'], '00000000000000001111');
    expect(apiResult.data!['amount']['amount'], 1);
  });

  test('Tests getCashbackDetails when code is NOT_ENOUGH_MONEY', () async {
    final merchantCashbackId = "test-not-enough-money";

    /// expected http result
    mockHttpClient.addHandler('/v2/cashback/$merchantCashbackId', 'GET',
        (request) async {
      var json = await getJson('cashback/get_detail_not_enough_money.json');
      return Response(json, HttpStatus.created);
    });
    final response =
        await paypayClient.cashBackApi.getCashbackDetails(merchantCashbackId);
    expect(response.statusCode, HttpStatus.created);
    final apiResult = PayPayClient.convertResponseToApiResult(response);
    expect(apiResult.resultInfo.code, 'NOT_ENOUGH_MONEY');
    expect(apiResult.data!['cashbackId'], '00000000000000009999');
    expect(apiResult.data!['amount']['amount'], 100000);
  });

  test('Tests reverseCashBack', () async {
    final payload = ReverseCashBackPayload(
      merchantCashbackReversalId: 'TESTXXXXXXXXX456',
      merchantCashbackId: 'testXXXXXXXXXXXXXXX123',
      requestedAt: PayPayClient.getRequestdAt(),
      reason: "reason",
      amount: Amount(amount: 1, currency: 'JPY'),
    );

    /// expected http result
    mockHttpClient.addHandler('/v2/cashback_reversal', 'POST', (request) async {
      var json = await getJson('cashback/created.json');
      return Response(json, HttpStatus.created);
    });
    final response = await paypayClient.cashBackApi.reverseCashBack(payload);
    expect(response.statusCode, HttpStatus.created);
    final apiResult = PayPayClient.convertResponseToApiResult(response);
    expect(apiResult.resultInfo.code, 'REQUEST_ACCEPTED');
  });

  test('Tests giveReversalCashbackDetails', () async {
    final merchantCashbackReversalId = "TESTXXXXXXXXX456";
    final merchantCashbackId = "testXXXXXXXXXXXXXXX123";

    /// expected http result
    mockHttpClient.addHandler(
        '/v2/cashback_reversal/$merchantCashbackReversalId/$merchantCashbackId',
        'GET', (request) async {
      var json = await getJson('cashback/get_reversal_detail_success.json');
      return Response(json, HttpStatus.created);
    });
    final response = await paypayClient.cashBackApi.getReversalCashbackDetails(
        merchantCashbackReversalId, merchantCashbackId);
    expect(response.statusCode, HttpStatus.created);
    final apiResult = PayPayClient.convertResponseToApiResult(response);
    expect(apiResult.resultInfo.code, 'SUCCESS');
  });
}
