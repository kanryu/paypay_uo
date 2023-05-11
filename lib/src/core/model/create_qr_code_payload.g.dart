// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_qr_code_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateQrCodePayload _$$_CreateQrCodePayloadFromJson(
        Map<String, dynamic> json) =>
    _$_CreateQrCodePayload(
      merchantPaymentId: json['merchantPaymentId'] as String,
      amount: Amount.fromJson(json['amount'] as Map<String, dynamic>),
      codeType: json['codeType'] as String? ?? 'ORDER_QR',
      requestedAt: json['requestedAt'] as int?,
      orderItems: (json['orderItems'] as List<dynamic>?)
          ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      redirectType: json['redirectType'] as String?,
      redirectUrl: json['redirectUrl'] as String?,
      orderDescription: json['orderDescription'] as String?,
      isAuthorization: json['isAuthorization'] as bool?,
      userAgent: json['userAgent'] as String?,
    );

Map<String, dynamic> _$$_CreateQrCodePayloadToJson(
        _$_CreateQrCodePayload instance) =>
    <String, dynamic>{
      'merchantPaymentId': instance.merchantPaymentId,
      'amount': instance.amount,
      'codeType': instance.codeType,
      'requestedAt': instance.requestedAt,
      'orderItems': instance.orderItems,
      'redirectType': instance.redirectType,
      'redirectUrl': instance.redirectUrl,
      'orderDescription': instance.orderDescription,
      'isAuthorization': instance.isAuthorization,
      'userAgent': instance.userAgent,
    };
