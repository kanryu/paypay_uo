// ignore: unnecessary_import
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'revert_auth_payload.freezed.dart';
part 'revert_auth_payload.g.dart';

@freezed
class RevertAuthPayload with _$RevertAuthPayload {
  factory RevertAuthPayload({
    /// [Required]
    /// Undocmerchant Revert Id
    /// string <= 64 characters
    required String merchantRevertId,

    /// [Required]
    /// Payment Id
    required String paymentId,

    /// Request timestamp(Unix epoch but not Unix millisecond epoch)
    int? requestedAt,
    String? reason,

    /// Description of the Order,
    /// to see the link to check how it will show up
    /// https://www.paypay.ne.jp/opa/doc/jp/v1.0/files/OPA%20PayPay%E3%82%A2%E3%83%97%E3%83%AA%E3%81%A7%E3%81%AE%E8%A1%A8%E7%A4%BA.pdf#page=4
    /// string <= 255 characters
    String? orderDescription,
  }) = _RevertAuthPayload;

  factory RevertAuthPayload.fromJson(Map<String, dynamic> json) =>
      _$RevertAuthPayloadFromJson(json);
}
