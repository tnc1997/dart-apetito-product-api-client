import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:apetito_product_api_client/src/models/product_diet.dart';
import 'package:apetito_product_api_client/src/models/product_free_from.dart';
import 'package:apetito_product_api_client/src/models/product_group.dart';
import 'package:apetito_product_api_client/src/models/product_made_without.dart';
import 'package:apetito_product_api_client/src/models/product_meal_type.dart';
import 'package:apetito_product_api_client/src/models/product_microwave_stage.dart';
import 'package:apetito_product_api_client/src/models/product_nutrition.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product extends Model<String> {
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
  List<ProductDiet>? productDiets;
  List<ProductFreeFrom>? productFreeFroms;
  List<ProductGroup>? productGroups;
  List<ProductMadeWithout>? productMadeWithouts;
  List<ProductMealType>? productMealTypes;
  List<ProductMicrowaveStage>? productMicrowaveStages;
  List<ProductNutrition>? productNutritions;

  Product({
    required String id,
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
    this.productDiets,
    this.productFreeFroms,
    this.productGroups,
    this.productMadeWithouts,
    this.productMealTypes,
    this.productMicrowaveStages,
    this.productNutritions,
  }) : super(
          id: id,
        );

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  @override
  String toString() => name ?? super.toString();

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
