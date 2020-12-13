// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product(
    id: json['id'] as String,
    name: json['name'] as String,
    code: json['code'] as String,
    description: json['description'] as String,
    imageUrl: json['imageUrl'] as String,
    weight: (json['weight'] as num?)?.toDouble(),
    cookingGuidelines: json['cookingGuidelines'] as String,
    microwaveCookingInstructions:
        json['microwaveCookingInstructions'] as String,
    ovenCookingInstructions: json['ovenCookingInstructions'] as String,
    storageInstructions: json['storageInstructions'] as String,
    unitsPerCase: json['unitsPerCase'] as int,
    plainTextIngredients: json['plainTextIngredients'] as String,
    htmlIngredients: json['htmlIngredients'] as String,
    formulation: json['formulation'] as String,
    isAvailable: json['isAvailable'] as bool,
    isNew: json['isNew'] as bool,
    productDiets: (json['productDiets'] as List?)
        ?.map((e) => ProductDiet.fromJson(e as Map<String, dynamic>))
        .toList(),
    productFreeFroms: (json['productFreeFroms'] as List?)
        ?.map((e) => ProductFreeFrom.fromJson(e as Map<String, dynamic>))
        .toList(),
    productGroups: (json['productGroups'] as List?)
        ?.map((e) => ProductGroup.fromJson(e as Map<String, dynamic>))
        .toList(),
    productMadeWithouts: (json['productMadeWithouts'] as List?)
        ?.map((e) => ProductMadeWithout.fromJson(e as Map<String, dynamic>))
        .toList(),
    productMealTypes: (json['productMealTypes'] as List?)
        ?.map((e) => ProductMealType.fromJson(e as Map<String, dynamic>))
        .toList(),
    productMicrowaveStages: (json['productMicrowaveStages'] as List?)
        ?.map((e) => ProductMicrowaveStage.fromJson(e as Map<String, dynamic>))
        .toList(),
    productNutritions: (json['productNutritions'] as List?)
        ?.map((e) => ProductNutrition.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'weight': instance.weight,
      'cookingGuidelines': instance.cookingGuidelines,
      'microwaveCookingInstructions': instance.microwaveCookingInstructions,
      'ovenCookingInstructions': instance.ovenCookingInstructions,
      'storageInstructions': instance.storageInstructions,
      'unitsPerCase': instance.unitsPerCase,
      'plainTextIngredients': instance.plainTextIngredients,
      'htmlIngredients': instance.htmlIngredients,
      'formulation': instance.formulation,
      'isAvailable': instance.isAvailable,
      'isNew': instance.isNew,
      'productDiets': instance.productDiets,
      'productFreeFroms': instance.productFreeFroms,
      'productGroups': instance.productGroups,
      'productMadeWithouts': instance.productMadeWithouts,
      'productMealTypes': instance.productMealTypes,
      'productMicrowaveStages': instance.productMicrowaveStages,
      'productNutritions': instance.productNutritions,
    };
