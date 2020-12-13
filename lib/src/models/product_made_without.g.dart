// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_made_without.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductMadeWithout _$ProductMadeWithoutFromJson(Map<String, dynamic> json) {
  return ProductMadeWithout(
    id: json['id'] as String,
    product: json['product'] == null
        ? null
        : Product.fromJson(json['product'] as Map<String, dynamic>),
    madeWithout: json['madeWithout'] == null
        ? null
        : MadeWithout.fromJson(json['madeWithout'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProductMadeWithoutToJson(ProductMadeWithout instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'madeWithout': instance.madeWithout,
    };
