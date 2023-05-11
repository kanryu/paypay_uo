// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_pending_payment_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreatePendingPaymentPayload _$$_CreatePendingPaymentPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_CreatePendingPaymentPayload(
      merchantPaymentId: json['merchantPaymentId'] as String,
      amount: Amount.fromJson(json['amount'] as Map<String, dynamic>),
      userAuthorizationId: json['userAuthorizationId'] as String,
      requestedAt: json['requestedAt'] as int?,
      orderDescription: json['orderDescription'] as String?,
    );

Map<String, dynamic> _$$_CreatePendingPaymentPayloadToJson(
        _$_CreatePendingPaymentPayload instance) =>
    <String, dynamic>{
      'merchantPaymentId': instance.merchantPaymentId,
      'amount': instance.amount,
      'userAuthorizationId': instance.userAuthorizationId,
      'requestedAt': instance.requestedAt,
      'orderDescription': instance.orderDescription,
    };
