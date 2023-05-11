// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_back_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CashBackPayload _$$_CashBackPayloadFromJson(Map<String, dynamic> json) =>
    _$_CashBackPayload(
      merchantCashbackId: json['merchantCashbackId'] as String,
      userAuthorizationId: json['userAuthorizationId'] as String,
      amount: Amount.fromJson(json['amount'] as Map<String, dynamic>),
      merchantCashbackReversalId: json['merchantCashbackReversalId'] as String?,
      requestedAt: json['requestedAt'] as int?,
      orderDescription: json['orderDescription'] as String?,
      walletType: json['walletType'] as String?,
      expiryDate: json['expiryDate'] as int?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_CashBackPayloadToJson(_$_CashBackPayload instance) =>
    <String, dynamic>{
      'merchantCashbackId': instance.merchantCashbackId,
      'userAuthorizationId': instance.userAuthorizationId,
      'amount': instance.amount,
      'merchantCashbackReversalId': instance.merchantCashbackReversalId,
      'requestedAt': instance.requestedAt,
      'orderDescription': instance.orderDescription,
      'walletType': instance.walletType,
      'expiryDate': instance.expiryDate,
      'metadata': instance.metadata,
    };
