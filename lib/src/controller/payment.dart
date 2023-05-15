import 'package:http/http.dart' as http;
import 'package:format/format.dart';

import 'package:paypay_uo/src/core/paypay_client.dart';
import 'package:paypay_uo/src/core/controller.dart';
import 'package:paypay_uo/src/core/model/capture_payment_auth_payload.dart';
import 'package:paypay_uo/src/core/model/create_payment_payload.dart';
import 'package:paypay_uo/src/core/model/create_continuous_payment_payload.dart';
import 'package:paypay_uo/src/core/model/create_pending_payment_payload.dart';
import 'package:paypay_uo/src/core/model/create_payment_auth_payload.dart';
import 'package:paypay_uo/src/core/model/refund_payment_payload.dart';
import 'package:paypay_uo/src/core/model/revert_auth_payload.dart';
import 'package:paypay_uo/src/constants/api_info.dart';

/// Payment API controller
class Payment extends Controller {
  Payment({required PayPayClient main}) : super(main: main);

  /// Create a direct debit payment and start the money transfer.
  Future<http.Response> createPayment(CreatePaymentPayload payload,
      {bool agreeSimilarTransaction = false}) {
    final apiInfo = ApiInfo.createPayment();
    final uri = agreeSimilarTransaction
        ? main.uri.apiUri.replace(
            path: apiInfo.path,
            queryParameters: <String, dynamic>{'agreeSimilarTransaction': 1})
        : main.uri.apiUri.replace(path: apiInfo.path);
    final data = payload.toJson();
    final requestBody = requestDataToJson(data);

    main.logger.i(
        'PayPay API.createPayment(merchantPaymentId=${payload.merchantPaymentId}, agreeSimilarTransaction=$agreeSimilarTransaction)');
    main.logger.d('request body: $requestBody');
    return doCall(apiInfo, uri, requestBody: requestBody);
  }

  /// Create a direct debit payment and start the money transfer.
  Future<http.Response> createContinuousPayment(
      CreateContinuousPaymentPayload payload) {
    final apiInfo = ApiInfo.createSubscriptionPayment();
    final uri = main.uri.apiUri.replace(path: apiInfo.path);
    final data = payload.toJson();
    final requestBody = requestDataToJson(data);

    main.logger.i(
        'PayPay API.createSubscriptionPayment(merchantPaymentId=${payload.merchantPaymentId})');
    main.logger.d('request body: $requestBody');
    return doCall(apiInfo, uri, requestBody: requestBody);
  }

  /// Create a direct debit payment and start the money transfer.
  Future<http.Response> createPendingPayment(
      CreatePendingPaymentPayload payload) {
    final apiInfo = ApiInfo.createRequestOrder();
    final uri = main.uri.apiUri.replace(path: apiInfo.path);
    final data = payload.toJson();
    final requestBody = requestDataToJson(data);

    main.logger.i(
        'PayPay API.createRequestOrder(merchantPaymentId=${payload.merchantPaymentId})');
    main.logger.d('request body: $requestBody');
    return doCall(apiInfo, uri, requestBody: requestBody);
  }

  /// Fetches Payment details
  ///
  /// [merchantPaymentId] is the unique payment transaction id provided by merchant
  /// [paymentType] Type of payment e.g. pending, continuous, direct_debit,web_cashier,dynamic_qr,app_invoke
  Future<http.Response> getPaymentDetails(String merchantPaymentId,
      {String paymentType = 'web_cashier'}) {
    /// reference: [paypayopa-sdk-php] Payment::endpointByPaymentType()
    final apiInfo = paymentType == 'pending'
        ? ApiInfo.getRequestOrder()
        : ApiInfo.getPaymentDetail();
    final entrypoint = apiInfo.path.format({
      'merchantPaymentId': merchantPaymentId,
    });
    main.logger.i(
        'PayPay API.${apiInfo.apiName}(merchantPaymentId=$merchantPaymentId, paymentType=$paymentType)');
    final uri = main.uri.apiUri.replace(path: entrypoint);
    return doCall(apiInfo, uri);
  }

  /// Cancel a payment
  ///
  /// This method is used in case, while creating a payment, the client can not determine the status of the payment.
  /// For example, client get timeout or the response cannot contain the information to indicate the exact payment status.
  /// By calling this api, if accepted, the OPA will guarantee the money eventually goes back to user's account.
  /// Note: The Cancel API can be used until 00:14:59 AM the day after the Payment has happened.
  ///       For 00:15 AM or later, please call the refund method to refund the payment.
  ///
  /// [merchantPaymentId] is the unique payment transaction id provided by merchant
  Future<http.Response> cancelPayment(String merchantPaymentId,
      {paymentType = 'web_cashier'}) {
    final apiInfo = paymentType == 'pending'
        ? ApiInfo.cancelRequestOrder()
        : ApiInfo.cancelPayment();
    final entrypoint = apiInfo.path.format({
      'merchantPaymentId': merchantPaymentId,
    });
    final uri = main.uri.apiUri.replace(path: entrypoint);
    main.logger.i(
        'PayPay API.${apiInfo.apiName}(merchantPaymentId=$merchantPaymentId)');
    return doCall(apiInfo, uri);
  }

  /// Refund a payment
  Future<http.Response> refundPayment(RefundPaymentPayload payload) {
    final apiInfo = ApiInfo.createRefundPayment();
    final uri = main.uri.apiUri.replace(path: apiInfo.path);
    final data = payload.toJson();
    final requestBody = requestDataToJson(data);

    main.logger.i(
        'PayPay API.createRefundPayment(merchantRefundId=${payload.merchantRefundId})');
    main.logger.d('request body: $requestBody');
    return doCall(apiInfo, uri, requestBody: requestBody);
  }

  /// Get refund details.
  ///
  /// [merchantRefundId] is the unique payment transaction id provided by merchant
  Future<http.Response> getRefundDetails(String merchantRefundId) {
    /// reference: [paypayopa-sdk-php] Payment::endpointByPaymentType()
    final apiInfo = ApiInfo.getRefundDetails();
    final entrypoint = apiInfo.path.format({
      'merchantRefundId': merchantRefundId,
    });
    final uri = main.uri.apiUri.replace(path: entrypoint);
    main.logger
        .i('PayPay API.getRefundDetails(merchantRefundId=$merchantRefundId)');
    return doCall(apiInfo, uri);
  }

  /// For payments to be updated with amount after creation,
  /// this method is used to capture the payment authorization
  /// for a payment
  Future<http.Response> createPaymentAuth(CreatePaymentAuthPayload payload,
      {bool agreeSimilarTransaction = false}) {
    final apiInfo = ApiInfo.createOrderAndAuthorize();
    final uri = agreeSimilarTransaction
        ? main.uri.apiUri.replace(
            path: apiInfo.path,
            queryParameters: <String, dynamic>{'agreeSimilarTransaction': 1})
        : main.uri.apiUri.replace(path: apiInfo.path);
    final data = payload.toJson();
    final requestBody = requestDataToJson(data);
    main.logger.i(
        'PayPay API.createOrderAndAuthorize(merchantPaymentId=${payload.merchantPaymentId})');
    main.logger.d('request body: $requestBody');
    return doCall(apiInfo, uri, requestBody: requestBody);
  }

  /// For payments to be updated with amount after creation,
  /// this method is used to capture the payment authorization
  /// for a payment
  Future<http.Response> capturePaymentAuth(CapturePaymentAuthPayload payload) {
    final apiInfo = ApiInfo.captureAuthorizedOrder();
    final uri = main.uri.apiUri.replace(path: apiInfo.path);
    final data = payload.toJson();
    final requestBody = requestDataToJson(data);
    main.logger.i(
        'PayPay API.captureAuthorizedOrder(merchantPaymentId=${payload.merchantPaymentId})');
    main.logger.d('request body: $requestBody');
    return doCall(apiInfo, uri, requestBody: requestBody);
  }

  /// For payments to be updated with amount after creation,
  /// This api is used in case the merchant wants to cancel
  /// the payment authorization because of cancellation of
  /// the order by the user.
  Future<http.Response> revertAuth(RevertAuthPayload payload,
      {bool agreeSimilarTransaction = false}) {
    final apiInfo = ApiInfo.revertAuthorizedOrder();
    final uri = main.uri.apiUri.replace(path: apiInfo.path);
    final data = payload.toJson();
    final requestBody = requestDataToJson(data);
    main.logger.i(
        'PayPay API.revertAuthorizedOrder(merchantRevertId=${payload.merchantRevertId})');
    main.logger.d('request body: $requestBody');
    return doCall(apiInfo, uri, requestBody: requestBody);
  }
}
