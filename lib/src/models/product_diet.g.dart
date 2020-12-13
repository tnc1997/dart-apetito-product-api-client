// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_diet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDiet _$ProductDietFromJson(Map<String, dynamic> json) {
  return ProductDiet(
    id: json['id'] as String,
    product: json['product'] == null
        ? null
        : Product.fromJson(json['product'] as Map<String, dynamic>),
    diet: json['diet'] == null
        ? null
        : Diet.fromJson(json['diet'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProductDietToJson(ProductDiet instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'diet': instance.diet,
    };
