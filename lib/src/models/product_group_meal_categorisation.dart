import 'meal_categorisation.dart';
import 'model.dart';
import 'product_group.dart';

class ProductGroupMealCategorisation extends Model<String> {
  ProductGroupMealCategorisation({
    this.productGroup,
    this.mealCategorisation,
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

  ProductGroup? productGroup;

  MealCategorisation? mealCategorisation;

  @override
  Map<String, dynamic> toJson() => {
        'productGroup': productGroup,
        'mealCategorisation': mealCategorisation,
        ...super.toJson(),
      };

  static ProductGroupMealCategorisation fromJson(Map<String, dynamic> json) =>
      ProductGroupMealCategorisation(
        productGroup: json['productGroup'] != null
            ? ProductGroup.fromJson(json['productGroup'])
            : null,
        mealCategorisation: json['mealCategorisation'] != null
            ? MealCategorisation.fromJson(json['mealCategorisation'])
            : null,
        id: json['id'],
        created:
            json['created'] != null ? DateTime.parse(json['created']) : null,
        creator: json['creator'],
        updated:
            json['updated'] != null ? DateTime.parse(json['updated']) : null,
        updater: json['updater'],
      );
}
