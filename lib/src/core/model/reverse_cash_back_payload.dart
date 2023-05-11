// ignore: unnecessary_import
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'amount.dart';

part 'reverse_cash_back_payload.freezed.dart';
part 'reverse_cash_back_payload.g.dart';

@freezed
class ReverseCashBackPayload with _$ReverseCashBackPayload {
  factory ReverseCashBackPayload({
    /// [Required]
    /// string <= 64 characters
    required String merchantCashbackId,

    /// string <= 64 characters
    required String merchantCashbackReversalId,

    /// [Required]
    /// Amount the user has to Pay
    required Amount amount,

    /// Request timestamp(Unix epoch but not Unix millisecond epoch)
    int? requestedAt,
    String? reason,

    /// Description of the Order,
    /// to see the link to check how it will show up
    /// https://www.paypay.ne.jp/opa/doc/jp/v1.0/files/OPA%20PayPay%E3%82%A2%E3%83%97%E3%83%AA%E3%81%A7%E3%81%AE%E8%A1%A8%E7%A4%BA.pdf#page=4
    /// string <= 255 characters
    String? orderDescription,
    Map<String, dynamic>? metadata,
  }) = _ReverseCashBackPayload;

  factory ReverseCashBackPayload.fromJson(Map<String, dynamic> json) =>
      _$ReverseCashBackPayloadFromJson(json);
}
