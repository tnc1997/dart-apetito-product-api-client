// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_warning.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductWarning _$ProductWarningFromJson(Map<String, dynamic> json) {
  return ProductWarning(
    id: json['id'] as String,
    product: json['product'] == null
        ? null
        : Product.fromJson(json['product'] as Map<String, dynamic>),
    warning: json['warning'] == null
        ? null
        : Warning.fromJson(json['warning'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProductWarningToJson(ProductWarning instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'warning': instance.warning,
    };
