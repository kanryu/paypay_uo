// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_link_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountLinkPayload _$AccountLinkPayloadFromJson(Map<String, dynamic> json) =>
    AccountLinkPayload(
      scopes: json['scopes'],
      redirectUrl: json['redirectUrl'] as String,
      referenceId: json['referenceId'] as String,
      nonce: json['nonce'] as String?,
      requestedAt: json['requestedAt'] as int?,
      orderDescription: json['orderDescription'] as String?,
    );

Map<String, dynamic> _$AccountLinkPayloadToJson(AccountLinkPayload instance) =>
    <String, dynamic>{
      'scopes': instance.scopes,
      'redirectUrl': instance.redirectUrl,
      'referenceId': instance.referenceId,
      'nonce': instance.nonce,
      'requestedAt': instance.requestedAt,
      'orderDescription': instance.orderDescription,
    };
