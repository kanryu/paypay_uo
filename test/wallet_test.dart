import 'dart:io';

import 'package:test/test.dart';
import 'package:http/http.dart';
import 'package:paypay_uo/paypay_uo.dart';
import 'helper/moch_http_client.dart';
import 'helper/util.dart';

void main() {
  late PayPayClient paypayClient;
  late MockHttpClient mockHttpClient;
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

  test('Test Wallet balance 1', () async {
    /// expected http result
    mockHttpClient.addHandler('/v2/wallet/check_balance', 'GET',
        (request) async {
      var json = await getJson('payment/created.json');
      return Response(json, HttpStatus.ok);
    });
    final response = await paypayClient.walletApi.checkWalletBalance(
        userAuthorizationId: userAuthorizationId, amount: 1, currency: 'JPY');
    expect(response.statusCode, HttpStatus.ok);
    final apiResult = PayPayClient.convertResponseToApiResult(response);
    expect(apiResult.resultInfo.code, 'SUCCESS');
  });
  test('Test Wallet balance 2', () async {
    /// expected http result
    mockHttpClient.addHandler('/v2/wallet/check_balance', 'GET',
        (request) async {
      var json = await getJson('payment/created.json');
      return Response(json, HttpStatus.ok);
    });
    final response = await paypayClient.walletApi.checkWalletBalance(
        userAuthorizationId: userAuthorizationId,
        amount: 1,
        currency: 'JPY',
        productType: "VIRTUAL_BONUS_INVESTMENT");
    expect(response.statusCode, HttpStatus.ok);
    final apiResult = PayPayClient.convertResponseToApiResult(response);
    expect(apiResult.resultInfo.code, 'SUCCESS');
  });
  test('Test Wallet balance 3', () {
    expect(
        () => paypayClient.walletApi.checkWalletBalance(
            userAuthorizationId: userAuthorizationId,
            amount: 1,
            currency: 'JPY',
            productType: "SnakeOil"),
        throwsA(TypeMatcher<Exception>()));
  });
}
