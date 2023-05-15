import 'package:http/http.dart' as http;
import 'package:format/format.dart';

import 'package:paypay_uo/src/core/paypay_client.dart';
import 'package:paypay_uo/src/core/controller.dart';
import 'package:paypay_uo/src/core/model/account_link_payload.dart';
import 'package:paypay_uo/src/constants/api_info.dart';

/// User API controller
class User extends Controller {
  User({required PayPayClient main}) : super(main: main);

  /// Unlink a user from the client
  Future<http.Response> unlinkUser(String userAuthorizationId) {
    final apiInfo = ApiInfo.unlinkUser();
    final entrypoint = apiInfo.path.format({
      'userAuthorizationId': userAuthorizationId,
    });
    final uri = main.uri.apiUri.replace(path: entrypoint);
    main.logger
        .i('PayPay API.unlinkUser(userAuthorizationId=$userAuthorizationId)');
    return doCall(apiInfo, uri);
  }

  /// Create a ACCOUNT LINK QR and display it to the user
  Future<http.Response> createAccountLinkQrCode(AccountLinkPayload payload) {
    final apiInfo = ApiInfo.createAccountLinkQrCode();
    final uri = main.uri.apiUri.replace(path: apiInfo.path);
    final data = payload.toJson();
    final requestBody = requestDataToJson(data);
    main.logger.i(
        'PayPay API.createAccountLinkQrCode(referenceId=${payload.referenceId})');
    main.logger.d('request body: $requestBody');
    return doCall(apiInfo, uri, requestBody: requestBody);
  }

  /// Get the authorization status of a user
  Future<http.Response> getUserAuthorizationStatus(String userAuthorizationId) {
    final apiInfo = ApiInfo.getUserAuthorizationStatus();
    final uri = main.uri.apiUri.replace(
        path: apiInfo.path,
        queryParameters: {'userAuthorizationId': userAuthorizationId});
    main.logger.i(
        'PayPay API.getUserAuthorizationStatus(userAuthorizationId=$userAuthorizationId)');
    return doCall(apiInfo, uri);
  }

  /// Get the masked phone number of the user
  Future<http.Response> getMaskedUserProfile(String userAuthorizationId) {
    final apiInfo = ApiInfo.getSecureUserProfile();
    final uri = main.uri.apiUri.replace(
        path: apiInfo.path,
        queryParameters: {'userAuthorizationId': userAuthorizationId});
    main.logger.i(
        'PayPay API.getSecureUserProfile(userAuthorizationId=$userAuthorizationId)');
    return doCall(apiInfo, uri);
  }
}
