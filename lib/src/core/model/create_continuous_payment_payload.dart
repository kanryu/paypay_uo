// ignore: unnecessary_import
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'amount.dart';

part 'create_continuous_payment_payload.freezed.dart';
part 'create_continuous_payment_payload.g.dart';

@freezed
class CreateContinuousPaymentPayload with _$CreateContinuousPaymentPayload {
  factory CreateContinuousPaymentPayload({
    /// [Required]
    /// The unique payment transaction id provided by merchant
    /// string <= 64 characters
    required String merchantPaymentId,

    /// [Required]
    /// Amount the user has to Pay
    required Amount amount,

    /// [Required]
    /// string <= 64 characters
    required String userAuthorizationId,

    /// Request timestamp(Unix epoch but not Unix millisecond epoch)
    int? requestedAt,

    /// Description of the Order,
    /// to see the link to check how it will show up
    /// https://www.paypay.ne.jp/opa/doc/jp/v1.0/files/OPA%20PayPay%E3%82%A2%E3%83%97%E3%83%AA%E3%81%A7%E3%81%AE%E8%A1%A8%E7%A4%BA.pdf#page=4
    /// string <= 255 characters
    String? orderDescription,
  }) = _CreateContinuousPaymentPayload;

  factory CreateContinuousPaymentPayload.fromJson(Map<String, dynamic> json) =>
      _$CreateContinuousPaymentPayloadFromJson(json);
}
