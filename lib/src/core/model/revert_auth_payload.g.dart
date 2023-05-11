// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revert_auth_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RevertAuthPayload _$$_RevertAuthPayloadFromJson(Map<String, dynamic> json) =>
    _$_RevertAuthPayload(
      merchantRevertId: json['merchantRevertId'] as String,
      paymentId: json['paymentId'] as String,
      requestedAt: json['requestedAt'] as int?,
      reason: json['reason'] as String?,
      orderDescription: json['orderDescription'] as String?,
    );

Map<String, dynamic> _$$_RevertAuthPayloadToJson(
        _$_RevertAuthPayload instance) =>
    <String, dynamic>{
      'merchantRevertId': instance.merchantRevertId,
      'paymentId': instance.paymentId,
      'requestedAt': instance.requestedAt,
      'reason': instance.reason,
      'orderDescription': instance.orderDescription,
    };
