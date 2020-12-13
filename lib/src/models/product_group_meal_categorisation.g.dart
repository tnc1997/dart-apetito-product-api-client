// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_group_meal_categorisation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductGroupMealCategorisation _$ProductGroupMealCategorisationFromJson(
    Map<String, dynamic> json) {
  return ProductGroupMealCategorisation(
    id: json['id'] as String,
    productGroup: json['productGroup'] == null
        ? null
        : ProductGroup.fromJson(json['productGroup'] as Map<String, dynamic>),
    mealCategorisation: json['mealCategorisation'] == null
        ? null
        : MealCategorisation.fromJson(
            json['mealCategorisation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProductGroupMealCategorisationToJson(
        ProductGroupMealCategorisation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productGroup': instance.productGroup,
      'mealCategorisation': instance.mealCategorisation,
    };
