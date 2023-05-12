// ignore: unnecessary_import
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'amount.dart';
import 'order_item.dart';

part 'create_qr_code_payload.freezed.dart';
part 'create_qr_code_payload.g.dart';

/// the model for 'Create a QR Code' API
/// to see: https://developer.paypay.ne.jp/products/docs/webpayment
@freezed
class CreateQrCodePayload with _$CreateQrCodePayload {
  factory CreateQrCodePayload({
    /// [Required]
    /// The unique payment transaction id provided by merchant
    /// string <= 64 characters
    required String merchantPaymentId,

    /// [Required]
    /// Amount the user has to Pay
    required Amount amount,

    /// [Required]
    /// Please pass the fixed value 'ORDER_QR'
    @Default('ORDER_QR') String codeType,

    /// Description of the Order,
    /// to see the link to check how it will show up
    /// https://www.paypay.ne.jp/opa/doc/jp/v1.0/files/OPA%20PayPay%E3%82%A2%E3%83%97%E3%83%AA%E3%81%A7%E3%81%AE%E8%A1%A8%E7%A4%BA.pdf#page=4
    /// string <= 255 characters
    String? orderDescription,

    /// The user agent of the web browser from where transaction is originating
    List<OrderItem>? orderItems,

    /// Extra information the merchant wants to add
    Map<String, dynamic>? metadata,

    /// Store info for the merchant
    /// string <= 255 characters
    String? storeInfo,

    /// Id to identify store under merchant
    /// string <= 255 characters
    String? storeId,

    /// The product type in PayPay system. Generally, this request parameter is optional.
    ///
    /// For some merchants that are restricted to use only certain product types, the product type must be properly set.
    /// Example: VIRTUAL_BONUS_INVESTMENT, PAY_LATER_REPAYMENT, REAL_INVESTMENT
    /// string (ProductType) <= 255 characters
    String? productType,

    /// Id to identify terminal device under store
    /// string <= 255 characters
    String? terminalId,

    /// Request timestamp(Unix epoch but not Unix millisecond epoch)
    int? requestedAt,

    /// By default it will be false, please set true if the amount will be captured later (preauth and capture payment)
    bool? isAuthorization,

    /// Epoch timestamp in seconds. The expiry duration must be less than the expiry granted to the merchant.
    ///
    /// Note: The expiry, in case of authorization with PAY_LATER_CC,
    /// is subject to be shortened under special circumstances
    /// such as user has cancelled PayLater, etc.
    /// In such cases, PayPay will notify merchant in advance
    /// of an updated (shortened) the expiry before merchant's authorization period
    /// expires via webhook notification
    /// (see the section Transaction Events > AUTHORIZED | Create a payment authorization).
    /// It is suggested for merchant to implement proper handling
    /// after consuming such an event to avoid capture failure.
    int? authorizationExpiry,

    /// The url of the page/app to open after the payment is complete,
    /// this can be a Web URL or a Deep link to your app
    String? redirectUrl,

    /// This can either be 'WEB_LINK' if the payment is happening on web browser or 'APP_DEEP_LINK' if the payment is happening on your app
    String? redirectType,

    /// The user agent of the web browser from where transaction is originating
    String? userAgent,
  }) = _CreateQrCodePayload;

  factory CreateQrCodePayload.fromJson(Map<String, dynamic> json) =>
      _$CreateQrCodePayloadFromJson(json);
}
