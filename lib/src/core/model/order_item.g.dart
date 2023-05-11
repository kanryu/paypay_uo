// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderItem _$$_OrderItemFromJson(Map<String, dynamic> json) => _$_OrderItem(
      name: json['name'] as String,
      quantity: json['quantity'] as int,
      unitPrice: json['unitPrice'] == null
          ? null
          : Amount.fromJson(json['unitPrice'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderItemToJson(_$_OrderItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'quantity': instance.quantity,
      'unitPrice': instance.unitPrice,
    };
