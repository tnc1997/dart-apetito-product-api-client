import 'package:apetito_product_api_client/src/models/meal_categorisation.dart';
import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:apetito_product_api_client/src/models/product_group.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_group_meal_categorisation.g.dart';

@JsonSerializable()
class ProductGroupMealCategorisation extends Model<String> {
  ProductGroup? productGroup;
  MealCategorisation? mealCategorisation;

  ProductGroupMealCategorisation({
    required String id,
    this.productGroup,
    this.mealCategorisation,
  }) : super(
          id: id,
        );

  factory ProductGroupMealCategorisation.fromJson(Map<String, dynamic> json) =>
      _$ProductGroupMealCategorisationFromJson(json);

  Map<String, dynamic> toJson() => _$ProductGroupMealCategorisationToJson(this);
}
