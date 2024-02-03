import 'dart:io';

import 'package:http/http.dart';
import 'package:paypay_uo/paypay_uo.dart';
import 'package:test/test.dart';

import 'helper/moch_http_client.dart';
import 'helper/util.dart';

void main() {
  late PayPayClient paypayClient;
  late MockHttpClient mockHttpClient;
  final userAuthorizationId = '<USER_AUTHORIZATION_IDENTIFIER>';
  final referenceId = "TESTREFERENCE_ID123";

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

  test('Test Create Account Link(SUCCESS)', () async {
    final payload = AccountLinkPayload(
      scopes: [
        "direct_debit",
        "preauth_capture_native",
        "continuous_payments",
        "pending_payments"
      ],
      requestedAt: PayPayClient.getRequestedAt(),
      redirectUrl: 'https://merchant.domain/test/callback',
      referenceId: referenceId,
    );

    /// expected http result
    mockHttpClient.addHandler('/v1/qr/sessions', 'POST', (request) async {
      var json = await getJson('payment/created.json');
      return Response(json, HttpStatus.created);
    });
    final response =
        await paypayClient.userApi.createAccountLinkQrCode(payload);
    expect(response.statusCode, HttpStatus.created);
    final apiResult = PayPayClient.convertResponseToApiResult(response);
    expect(apiResult.resultInfo.code, 'SUCCESS');
  });
  test('Test Create Account Link(Exception)', () {
    expect(() {
      final payload = AccountLinkPayload(
        scopes: [
          "direct_debit",
          "preauth_capture_native",
          "continuous_payments",
          "pending_payments",
          'non_exist_scope' // Exception
        ],
        requestedAt: PayPayClient.getRequestedAt(),
        redirectUrl: 'https://merchant.domain/test/callback',
        referenceId: referenceId,
      );
      paypayClient.userApi.createAccountLinkQrCode(payload);
    }, throwsA(TypeMatcher<Exception>()));
  });

  test('Test for getUserAuthorizationStatus', () async {
    /// expected http result
    mockHttpClient.addHandler('/v2/user/authorizations', 'GET',
        (request) async {
      var json = await getJson('user/get_status.json');
      return Response(json, HttpStatus.created);
    });
    final response = await paypayClient.userApi
        .getUserAuthorizationStatus(userAuthorizationId);
    expect(response.statusCode, HttpStatus.created);
    final apiResult = PayPayClient.convertResponseToApiResult(response);
    expect(apiResult.resultInfo.code, 'SUCCESS');
  });
  test('Test for GetMaskedUserProfile', () async {
    /// expected http result
    mockHttpClient.addHandler('/v2/user/profile/secure', 'GET',
        (request) async {
      var json = await getJson('user/get_profile.json');
      return Response(json, HttpStatus.created);
    });
    final response =
        await paypayClient.userApi.getMaskedUserProfile(userAuthorizationId);
    expect(response.statusCode, HttpStatus.created);
    final apiResult = PayPayClient.convertResponseToApiResult(response);
    expect(apiResult.resultInfo.code, 'SUCCESS');
  });
}
