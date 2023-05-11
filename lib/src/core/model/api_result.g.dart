// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResultInfo _$$_ResultInfoFromJson(Map<String, dynamic> json) =>
    _$_ResultInfo(
      code: json['code'] as String,
      message: json['message'] as String,
      codeId: json['codeId'] as String,
    );

Map<String, dynamic> _$$_ResultInfoToJson(_$_ResultInfo instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'codeId': instance.codeId,
    };

_$_ApiResult _$$_ApiResultFromJson(Map<String, dynamic> json) => _$_ApiResult(
      resultInfo:
          ResultInfo.fromJson(json['resultInfo'] as Map<String, dynamic>),
      data: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_ApiResultToJson(_$_ApiResult instance) =>
    <String, dynamic>{
      'resultInfo': instance.resultInfo,
      'data': instance.data,
    };
