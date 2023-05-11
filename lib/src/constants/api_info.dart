import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_info.freezed.dart';

/// Setting value of access method for each API
@freezed
class ApiInfo with _$ApiInfo {
  factory ApiInfo(
      {required String apiName,
      required String path,
      required String method}) = _PayPayApiInfo;

  factory ApiInfo.getRequestOrder() => ApiInfo(
        apiName: 'v1_getRequestOrder',
        path: '/v1/requestOrder/{merchantPaymentId}',
        method: 'GET',
      );
  factory ApiInfo.getWalletBalance() => ApiInfo(
        apiName: 'v6_getWalletBalance',
        path: '/v6/wallet/balance',
        method: 'GET',
      );
  factory ApiInfo.getWalletBalanceV2() => ApiInfo(
        apiName: 'v2_getWalletBalance',
        path: '/',
        method: 'GET',
      );
  factory ApiInfo.getWalletBalanceV3() => ApiInfo(
        apiName: 'v3_getWalletBalance',
        path: '/v3/wallet/balance',
        method: 'GET',
      );
  factory ApiInfo.getWalletBalanceV4() => ApiInfo(
        apiName: 'v4_getWalletBalance',
        path: '/v4/wallet/balance',
        method: 'GET',
      );
  factory ApiInfo.getWalletBalanceV5() => ApiInfo(
        apiName: 'v5_getWalletBalance',
        path: '/v5/wallet/balance',
        method: 'GET',
      );
  factory ApiInfo.getUserAuthorizationStatus() => ApiInfo(
        apiName: 'v2_fetchUserProfileForWebApp',
        path: '/v2/user/authorizations',
        method: 'GET',
      );
  factory ApiInfo.fetchUserProfileForWebApp() => ApiInfo(
        apiName: 'v2_fetchUserProfileForWebApp',
        path: '/v2/user/authorizations/details',
        method: 'GET',
      );
  factory ApiInfo.getPaymentMethods() => ApiInfo(
        apiName: 'v2_getPaymentMethods',
        path: '/v2/paymentMethods',
        method: 'GET',
      );
  factory ApiInfo.getQRPaymentDetails() => ApiInfo(
        apiName: 'v2_getQRPaymentDetails',
        path: '/v2/codes/payments/{merchantPaymentId}',
        method: 'GET',
      );
  factory ApiInfo.getReversedCashBackDetails() => ApiInfo(
        apiName: 'v2_getReversedCashBackDetails',
        path:
            'v2/cashback_reversal/{merchantCashbackReversalId}/{merchantCashbackId}',
        method: 'GET',
      );
  factory ApiInfo.getRefundDetails() => ApiInfo(
        apiName: 'v2_getRefundDetails',
        path: '/v2/refunds/{merchantRefundId}',
        method: 'GET',
      );
  factory ApiInfo.getTopUpDetails() => ApiInfo(
        apiName: 'v2_getTopUpDetails',
        path: '/v2/wallet/topups/{merchantTopUpId}',
        method: 'GET',
      );
  factory ApiInfo.getPaymentDetail() => ApiInfo(
        apiName: 'v2_getPaymentDetail',
        path: '/v2/payments/{merchantPaymentId}',
        method: 'GET',
      );
  factory ApiInfo.checkWalletBalance() => ApiInfo(
        apiName: 'v2_checkWalletBalance',
        path: '/v2/wallet/check_balance',
        method: 'GET',
      );
  factory ApiInfo.getCashbackDetails() => ApiInfo(
        apiName: 'v2_getCashbackDetails',
        path: '/v2/cashback/{merchantCashbackId}',
        method: 'GET',
      );
  factory ApiInfo.unlinkUser() => ApiInfo(
        apiName: 'v2_unlinkUser',
        path: '/v2/user/{userAuthorizationId}',
        method: 'DELETE',
      );
  factory ApiInfo.createAccountLinkQrCode() => ApiInfo(
        apiName: 'v1_createAccountLinkQrCode',
        path: '/v1/qr/sessions',
        method: 'POST',
      );
  factory ApiInfo.getUserProfile() => ApiInfo(
        apiName: 'v2_getUserProfile',
        path: '/v2/user/profile',
        method: 'GET',
      );
  factory ApiInfo.getSecureUserProfile() => ApiInfo(
        apiName: 'v2_getSecureUserProfile',
        path: '/v2/user/profile/secure',
        method: 'GET',
      );
  factory ApiInfo.sendPushNotification() => ApiInfo(
        apiName: 'v1_sendPushNotification',
        path: '/v1/push/user/notification',
        method: 'POST',
      );
  factory ApiInfo.createRequestOrder() => ApiInfo(
        apiName: 'v1_createRequestOrder',
        path: '/v1/requestOrder',
        method: 'POST',
      );
  factory ApiInfo.createUserAuthForWebApp() => ApiInfo(
        apiName: 'v2_createUserAuthForWebApp',
        path: '/v2/user/authorizations/applications',
        method: 'POST',
      );
  factory ApiInfo.sendPushTemplateNotification() => ApiInfo(
        apiName: 'v1_sendPushTemplateNotification',
        path: '/v1/push/notification',
        method: 'POST',
      );
  factory ApiInfo.captureAuthorizedOrder() => ApiInfo(
        apiName: 'v2_captureAuthorizedOrder',
        path: '/v2/payments/capture',
        method: 'POST',
      );
  factory ApiInfo.revertAuthorizedOrder() => ApiInfo(
        apiName: 'v2_revertAuthorizedOrder',
        path: '/v2/payments/preauthorize/revert',
        method: 'POST',
      );
  factory ApiInfo.createOrderAndAuthorize() => ApiInfo(
        apiName: 'v2_createOrderAndAuthorize',
        path: '/v2/payments/preauthorize',
        method: 'POST',
      );
  factory ApiInfo.createUserWalletTopUp() => ApiInfo(
        apiName: 'v2_createUserWalletTopUp',
        path: '/v2/user/wallet/topups',
        method: 'POST',
      );
  factory ApiInfo.createSubscriptionPayment() => ApiInfo(
        apiName: 'v1_createSubscriptionPayment',
        path: '/v1/subscription/payments',
        method: 'POST',
      );
  factory ApiInfo.createCashBackRequest() => ApiInfo(
        apiName: 'v2_createCashBackRequest',
        path: '/v2/cashback',
        method: 'POST',
      );
  factory ApiInfo.createPayment() => ApiInfo(
        apiName: 'v2_createPayment',
        path: '/v2/payments',
        method: 'POST',
      );
  factory ApiInfo.createTopUp() => ApiInfo(
        apiName: 'v2_createTopUp',
        path: '/v2/wallet/topups',
        method: 'POST',
      );
  factory ApiInfo.createDynamicQRCode() => ApiInfo(
        apiName: 'v2_createDynamicQRCode',
        path: '/v2/codes',
        method: 'POST',
      );
  factory ApiInfo.createRefundPayment() => ApiInfo(
        apiName: 'v2_createRefundPayment',
        path: '/v2/refunds',
        method: 'POST',
      );
  factory ApiInfo.createReverseCashBackRequest() => ApiInfo(
        apiName: 'v2_createReverseCashBackRequest',
        path: '/v2/cashback_reversal',
        method: 'POST',
      );
  factory ApiInfo.sendPushTemplateNotificationToMerchantUser() => ApiInfo(
        apiName: 'v1_sendPushTemplateNotificationToMerchantUser',
        path: '/v1/push/merchant/users/notifications',
        method: 'POST',
      );
  factory ApiInfo.cancelRequestOrder() => ApiInfo(
        apiName: 'v1_cancelRequestOrder',
        path: '/v1/requestOrder/{merchantPaymentId}',
        method: 'DELETE',
      );
  factory ApiInfo.deleteDynamicQRCode() => ApiInfo(
        apiName: 'v2_deleteDynamicQRCode',
        path: '/v2/codes/{codeId}',
        method: 'DELETE',
      );
  factory ApiInfo.cancelPayment() => ApiInfo(
        apiName: 'v2_cancelPayment',
        path: '/v2/payments/{merchantPaymentId}',
        method: 'DELETE',
      );
}
