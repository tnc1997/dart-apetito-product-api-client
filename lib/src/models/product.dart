import 'model.dart';
import 'product_allergen.dart';
import 'product_catalog.dart';
import 'product_diet.dart';
import 'product_free_from.dart';
import 'product_group.dart';
import 'product_made_without.dart';
import 'product_meal_type.dart';
import 'product_microwave_stage.dart';
import 'product_nutrition.dart';
import 'product_precautionary_allergen_statement.dart';
import 'product_warning.dart';
import 'range.dart';
import 'serving_type.dart';

class Product extends Model<String> {
  Product({
    this.name,
    this.code,
    this.description,
    this.imageUrl,
    this.weight,
    this.cookingGuidelines,
    this.microwaveCookingInstructions,
    this.ovenCookingInstructions,
    this.storageInstructions,
    this.unitsPerCase,
    this.plainTextIngredients,
    this.htmlIngredients,
    this.formulation,
    this.isAvailable,
    this.isNew,
    this.servingPortions,
    this.servingSize,
    this.range,
    this.servingType,
    this.productAllergens,
    this.productCatalogs,
    this.productDiets,
    this.productFreeFroms,
    this.productGroups,
    this.productMadeWithouts,
    this.productMealTypes,
    this.productMicrowaveStages,
    this.productNutritions,
    this.productPrecautionaryAllergenStatements,
    this.productWarnings,
    required String id,
    DateTime? created,
    String? creator,
    DateTime? updated,
    String? updater,
  }) : super(
          id: id,
          created: created,
          updated: updated,
          updater: updater,
        );

  String? name;

  String? code;

  String? description;

  String? imageUrl;

  double? weight;

  String? cookingGuidelines;

  String? microwaveCookingInstructions;

  String? ovenCookingInstructions;

  String? storageInstructions;

  int? unitsPerCase;

  String? plainTextIngredients;

  String? htmlIngredients;

  String? formulation;

  bool? isAvailable;

  bool? isNew;

  int? servingPortions;

  double? servingSize;

  Range? range;

  ServingType? servingType;

  List<ProductAllergen>? productAllergens;

  List<ProductCatalog>? productCatalogs;

  List<ProductDiet>? productDiets;

  List<ProductFreeFrom>? productFreeFroms;

  List<ProductGroup>? productGroups;

  List<ProductMadeWithout>? productMadeWithouts;

  List<ProductMealType>? productMealTypes;

  List<ProductMicrowaveStage>? productMicrowaveStages;

  List<ProductNutrition>? productNutritions;

  List<ProductPrecautionaryAllergenStatement>?
      productPrecautionaryAllergenStatements;

  List<ProductWarning>? productWarnings;

  @override
  String toString() => name ?? super.toString();

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'code': code,
        'description': description,
        'imageUrl': imageUrl,
        'weight': weight,
        'cookingGuidelines': cookingGuidelines,
        'microwaveCookingInstructions': microwaveCookingInstructions,
        'ovenCookingInstructions': ovenCookingInstructions,
        'storageInstructions': storageInstructions,
        'unitsPerCase': unitsPerCase,
        'plainTextIngredients': plainTextIngredients,
        'htmlIngredients': htmlIngredients,
        'formulation': formulation,
        'isAvailable': isAvailable,
        'isNew': isNew,
        'servingPortions': servingPortions,
        'servingSize': servingSize,
        'range': range,
        'servingType': servingType,
        'productAllergens': productAllergens,
        'productCatalogs': productCatalogs,
        'productDiets': productDiets,
        'productFreeFroms': productFreeFroms,
        'productGroups': productGroups,
        'productMadeWithouts': productMadeWithouts,
        'productMealTypes': productMealTypes,
        'productMicrowaveStages': productMicrowaveStages,
        'productNutritions': productNutritions,
        'productPrecautionaryAllergenStatements':
            productPrecautionaryAllergenStatements,
        'productWarnings': productWarnings,
        ...super.toJson(),
      };

  static Product fromJson(Map<String, dynamic> json) => Product(
        name: json['name'],
        code: json['code'],
        description: json['description'],
        imageUrl: json['imageUrl'],
        weight: (json['weight'] as num?)?.toDouble(),
        cookingGuidelines: json['cookingGuidelines'],
        microwaveCookingInstructions: json['microwaveCookingInstructions'],
        ovenCookingInstructions: json['ovenCookingInstructions'],
        storageInstructions: json['storageInstructions'],
        unitsPerCase: (json['unitsPerCase'] as num?)?.toInt(),
        plainTextIngredients: json['plainTextIngredients'],
        htmlIngredients: json['htmlIngredients'],
        formulation: json['formulation'],
        isAvailable: json['isAvailable'],
        isNew: json['isNew'],
        servingPortions: (json['servingPortions'] as num?)?.toInt(),
        servingSize: (json['servingSize'] as num?)?.toDouble(),
        range: json['range'] != null ? Range.fromJson(json['range']) : null,
        servingType: json['servingType'] != null
            ? ServingType.fromJson(json['servingType'])
            : null,
        productAllergens: (json['productAllergens'] as List<dynamic>?)
            ?.map((e) => ProductAllergen.fromJson(e))
            .toList(),
        productCatalogs: (json['productCatalogs'] as List<dynamic>?)
            ?.map((e) => ProductCatalog.fromJson(e))
            .toList(),
        productDiets: (json['productDiets'] as List<dynamic>?)
            ?.map((e) => ProductDiet.fromJson(e))
            .toList(),
        productFreeFroms: (json['productFreeFroms'] as List<dynamic>?)
            ?.map((e) => ProductFreeFrom.fromJson(e))
            .toList(),
        productGroups: (json['productGroups'] as List<dynamic>?)
            ?.map((e) => ProductGroup.fromJson(e))
            .toList(),
        productMadeWithouts: (json['productMadeWithouts'] as List<dynamic>?)
            ?.map((e) => ProductMadeWithout.fromJson(e))
            .toList(),
        productMealTypes: (json['productMealTypes'] as List<dynamic>?)
            ?.map((e) => ProductMealType.fromJson(e))
            .toList(),
        productMicrowaveStages:
            (json['productMicrowaveStages'] as List<dynamic>?)
                ?.map((e) => ProductMicrowaveStage.fromJson(e))
                .toList(),
        productNutritions: (json['productNutritions'] as List<dynamic>?)
            ?.map((e) => ProductNutrition.fromJson(e))
            .toList(),
        productPrecautionaryAllergenStatements:
            (json['productPrecautionaryAllergenStatements'] as List<dynamic>?)
                ?.map((e) => ProductPrecautionaryAllergenStatement.fromJson(e))
                .toList(),
        productWarnings: (json['productWarnings'] as List<dynamic>?)
            ?.map((e) => ProductWarning.fromJson(e))
            .toList(),
        id: json['id'],
        created:
            json['created'] != null ? DateTime.parse(json['created']) : null,
        creator: json['creator'],
        updated:
            json['updated'] != null ? DateTime.parse(json['updated']) : null,
        updater: json['updater'],
      );
}
