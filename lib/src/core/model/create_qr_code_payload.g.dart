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
      orderDescription: json['orderDescription'] as String?,
      orderItems: (json['orderItems'] as List<dynamic>?)
          ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      metadata: json['metadata'] as Map<String, dynamic>?,
      storeInfo: json['storeInfo'] as String?,
      storeId: json['storeId'] as String?,
      productType: json['productType'] as String?,
      terminalId: json['terminalId'] as String?,
      requestedAt: json['requestedAt'] as int?,
      isAuthorization: json['isAuthorization'] as bool?,
      authorizationExpiry: json['authorizationExpiry'] as int?,
      redirectUrl: json['redirectUrl'] as String?,
      redirectType: json['redirectType'] as String?,
      userAgent: json['userAgent'] as String?,
    );

Map<String, dynamic> _$$_CreateQrCodePayloadToJson(
        _$_CreateQrCodePayload instance) =>
    <String, dynamic>{
      'merchantPaymentId': instance.merchantPaymentId,
      'amount': instance.amount,
      'codeType': instance.codeType,
      'orderDescription': instance.orderDescription,
      'orderItems': instance.orderItems,
      'metadata': instance.metadata,
      'storeInfo': instance.storeInfo,
      'storeId': instance.storeId,
      'productType': instance.productType,
      'terminalId': instance.terminalId,
      'requestedAt': instance.requestedAt,
      'isAuthorization': instance.isAuthorization,
      'authorizationExpiry': instance.authorizationExpiry,
      'redirectUrl': instance.redirectUrl,
      'redirectType': instance.redirectType,
      'userAgent': instance.userAgent,
    };
