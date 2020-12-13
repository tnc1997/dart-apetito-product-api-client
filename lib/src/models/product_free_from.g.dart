// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_free_from.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductFreeFrom _$ProductFreeFromFromJson(Map<String, dynamic> json) {
  return ProductFreeFrom(
    id: json['id'] as String,
    product: json['product'] == null
        ? null
        : Product.fromJson(json['product'] as Map<String, dynamic>),
    freeFrom: json['freeFrom'] == null
        ? null
        : FreeFrom.fromJson(json['freeFrom'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProductFreeFromToJson(ProductFreeFrom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'freeFrom': instance.freeFrom,
    };
