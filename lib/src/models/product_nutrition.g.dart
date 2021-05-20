// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_nutrition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductNutrition _$ProductNutritionFromJson(Map<String, dynamic> json) {
  return ProductNutrition(
    id: json['id'] as String,
    per100G: json['per100G'] as String?,
    perPortion: json['perPortion'] as String?,
    percentageOfReferenceIntake:
        (json['percentageOfReferenceIntake'] as num?)?.toDouble(),
    product: json['product'] == null
        ? null
        : Product.fromJson(json['product'] as Map<String, dynamic>),
    nutrition: json['nutrition'] == null
        ? null
        : Nutrition.fromJson(json['nutrition'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProductNutritionToJson(ProductNutrition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'per100G': instance.per100G,
      'perPortion': instance.perPortion,
      'percentageOfReferenceIntake': instance.percentageOfReferenceIntake,
      'product': instance.product,
      'nutrition': instance.nutrition,
    };
