// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payment_auth_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreatePaymentAuthPayload _$$_CreatePaymentAuthPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_CreatePaymentAuthPayload(
      merchantPaymentId: json['merchantPaymentId'] as String,
      amount: Amount.fromJson(json['amount'] as Map<String, dynamic>),
      userAuthorizationId: json['userAuthorizationId'] as String,
      requestedAt: json['requestedAt'] as int?,
      orderDescription: json['orderDescription'] as String?,
    );

Map<String, dynamic> _$$_CreatePaymentAuthPayloadToJson(
        _$_CreatePaymentAuthPayload instance) =>
    <String, dynamic>{
      'merchantPaymentId': instance.merchantPaymentId,
      'amount': instance.amount,
      'userAuthorizationId': instance.userAuthorizationId,
      'requestedAt': instance.requestedAt,
      'orderDescription': instance.orderDescription,
    };
