// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_meal_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductMealType _$ProductMealTypeFromJson(Map<String, dynamic> json) {
  return ProductMealType(
    id: json['id'] as String,
    product: json['product'] == null
        ? null
        : Product.fromJson(json['product'] as Map<String, dynamic>),
    mealType: json['mealType'] == null
        ? null
        : MealType.fromJson(json['mealType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProductMealTypeToJson(ProductMealType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'mealType': instance.mealType,
    };
