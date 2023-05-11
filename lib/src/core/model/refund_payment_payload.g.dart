// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_payment_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RefundPaymentPayload _$$_RefundPaymentPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_RefundPaymentPayload(
      merchantRefundId: json['merchantRefundId'] as String,
      paymentId: json['paymentId'] as String,
      amount: Amount.fromJson(json['amount'] as Map<String, dynamic>),
      requestedAt: json['requestedAt'] as int?,
      reason: json['reason'] as String?,
      orderDescription: json['orderDescription'] as String?,
    );

Map<String, dynamic> _$$_RefundPaymentPayloadToJson(
        _$_RefundPaymentPayload instance) =>
    <String, dynamic>{
      'merchantRefundId': instance.merchantRefundId,
      'paymentId': instance.paymentId,
      'amount': instance.amount,
      'requestedAt': instance.requestedAt,
      'reason': instance.reason,
      'orderDescription': instance.orderDescription,
    };
