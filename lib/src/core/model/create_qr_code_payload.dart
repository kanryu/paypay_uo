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

    /// Request timestamp(Unix epoch but not Unix millisecond epoch)
    int? requestedAt,

    /// The user agent of the web browser from where transaction is originating
    List<OrderItem>? orderItems,

    /// This can either be 'WEB_LINK' if the payment is happening on web browser or 'APP_DEEP_LINK' if the payment is happening on your app
    String? redirectType,

    /// The url of the page/app to open after the payment is complete, this can be a Web URL or a Deep link to your app
    String? redirectUrl,

    /// Description of the Order,
    /// to see the link to check how it will show up
    /// https://www.paypay.ne.jp/opa/doc/jp/v1.0/files/OPA%20PayPay%E3%82%A2%E3%83%97%E3%83%AA%E3%81%A7%E3%81%AE%E8%A1%A8%E7%A4%BA.pdf#page=4
    /// string <= 255 characters
    String? orderDescription,

    /// By default it will be false, please set true if the amount will be captured later (preauth and capture payment)
    bool? isAuthorization,

    /// The user agent of the web browser from where transaction is originating
    String? userAgent,
  }) = _CreateQrCodePayload;

  factory CreateQrCodePayload.fromJson(Map<String, dynamic> json) =>
      _$CreateQrCodePayloadFromJson(json);
}
