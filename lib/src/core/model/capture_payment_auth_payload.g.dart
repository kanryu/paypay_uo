// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capture_payment_auth_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CapturePaymentAuthPayload _$$_CapturePaymentAuthPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_CapturePaymentAuthPayload(
      merchantPaymentId: json['merchantPaymentId'] as String,
      merchantCaptureId: json['merchantCaptureId'] as String,
      amount: Amount.fromJson(json['amount'] as Map<String, dynamic>),
      userAuthorizationId: json['userAuthorizationId'] as String,
      requestedAt: json['requestedAt'] as int?,
      orderDescription: json['orderDescription'] as String?,
    );

Map<String, dynamic> _$$_CapturePaymentAuthPayloadToJson(
        _$_CapturePaymentAuthPayload instance) =>
    <String, dynamic>{
      'merchantPaymentId': instance.merchantPaymentId,
      'merchantCaptureId': instance.merchantCaptureId,
      'amount': instance.amount,
      'userAuthorizationId': instance.userAuthorizationId,
      'requestedAt': instance.requestedAt,
      'orderDescription': instance.orderDescription,
    };
