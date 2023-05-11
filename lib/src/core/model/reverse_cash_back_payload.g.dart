// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reverse_cash_back_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReverseCashBackPayload _$$_ReverseCashBackPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_ReverseCashBackPayload(
      merchantCashbackId: json['merchantCashbackId'] as String,
      merchantCashbackReversalId: json['merchantCashbackReversalId'] as String,
      amount: Amount.fromJson(json['amount'] as Map<String, dynamic>),
      requestedAt: json['requestedAt'] as int?,
      reason: json['reason'] as String?,
      orderDescription: json['orderDescription'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_ReverseCashBackPayloadToJson(
        _$_ReverseCashBackPayload instance) =>
    <String, dynamic>{
      'merchantCashbackId': instance.merchantCashbackId,
      'merchantCashbackReversalId': instance.merchantCashbackReversalId,
      'amount': instance.amount,
      'requestedAt': instance.requestedAt,
      'reason': instance.reason,
      'orderDescription': instance.orderDescription,
      'metadata': instance.metadata,
    };
