// ignore: unnecessary_import
import 'package:json_annotation/json_annotation.dart';

part 'account_link_payload.g.dart';

@JsonSerializable()
class AccountLinkPayload {
  AccountLinkPayload(
      {required scopes,
      required this.redirectUrl,
      required this.referenceId,
      this.nonce,
      this.requestedAt,
      this.orderDescription})
      : scopes_ = AccountLinkPayload.checkScopes(scopes);

  @JsonKey(includeFromJson: false)
  final List<String> scopes_;
  List<String> get scopes => scopes_;

  /// The url of the page/app to open after the payment is complete, this can be a Web URL or a Deep link to your app
  final String redirectUrl;
  final String referenceId;
  final String? nonce;

  /// Request timestamp(Unix epoch but not Unix millisecond epoch)
  final int? requestedAt;

  /// Description of the Order,
  /// to see the link to check how it will show up
  /// https://www.paypay.ne.jp/opa/doc/jp/v1.0/files/OPA%20PayPay%E3%82%A2%E3%83%97%E3%83%AA%E3%81%A7%E3%81%AE%E8%A1%A8%E7%A4%BA.pdf#page=4
  /// string <= 255 characters
  final String? orderDescription;

  /// Raise an exception if scopes are not included in allowedScopes
  static List<String> checkScopes(List<String> scopes) {
    const allowedScopes = <String>{
      "direct_debit",
      "cashback",
      "get_balance",
      "quick_pay",
      "continuous_payments",
      "merchant_topup",
      "pending_payments",
      "user_notification",
      "user_topup",
      "user_profile",
      "preauth_capture_native",
      "preauth_capture_transaction",
      "push_notification",
      "notification_center_ob",
      "notification_center_ab",
      "notification_center_tl"
    };
    if (!allowedScopes.containsAll(scopes)) {
      final scopeset = scopes.toSet();
      final diff = scopeset.difference(allowedScopes.intersection(scopeset));
      throw Exception('Invalid Scope found. [${diff.toString()}]');
    }
    return scopes;
  }

  factory AccountLinkPayload.fromJson(Map<String, dynamic> json) =>
      _$AccountLinkPayloadFromJson(json);
  Map<String, dynamic> toJson() => _$AccountLinkPayloadToJson(this);
}
