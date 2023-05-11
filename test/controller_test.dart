import 'package:test/test.dart';
import 'package:paypay_uo/paypay_uo.dart';
import 'helper/moch_http_client.dart';

void main() {
  late PayPayClient paypayClient;
  late MockHttpClient mockHttpClient;
  final apiKey = 'APIKeyGenerated';
  final apiSecret = 'APIKeySecretGenerated';
  final assumeMerchant = 'APImarchantId';

  setUp(() {
    mockHttpClient = MockHttpClient(MockHttpClientHandler());

    final auth = PayPayAuth(
        merchantId: assumeMerchant, apiSecret: apiSecret, apiKey: apiKey);
    paypayClient =
        PayPayClient(apiMode: ApiMode.test, auth: auth, client: mockHttpClient);
  });

  test('Test Hmac hashed headers', () async {
    /// [reference]
    /// https://www.paypay.ne.jp/opa/doc/jp/v1.0/api_authorization.html
    final requestUri = '/v2/codes';
    final requestMethod = 'POST';
    final epoch = '1579843452';
    final nonce = 'acd028';
    final requestData = {
      "sampleRequestBodyKey1": "sampleRequestBodyValue1",
      "sampleRequestBodyKey2": "sampleRequestBodyValue2"
    };
    final cotentType = 'application/json;charset=UTF-8;';
    final controller = paypayClient.codeApi;
    final requestBody = controller.requestDataToJson(requestData);
    final hmacHeader = controller.payPayEncryptHeader(
        apiKey, apiSecret, requestMethod, requestUri, cotentType,
        requestBody: requestBody, epoch: epoch, nonce: nonce);
    expect(hmacHeader,
        'hmac OPA-Auth:APIKeyGenerated:NW1jKIMnzR7tEhMWtcJcaef+nFVBt7jjAGcVuxHhchc=:acd028:1579843452:1j0FnY4flNp5CtIKa7x9MQ==');
  });
}
