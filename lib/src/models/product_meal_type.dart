import 'meal_type.dart';
import 'model.dart';
import 'product.dart';

class ProductMealType extends Model<String> {
  ProductMealType({
    this.product,
    this.mealType,
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

  Product? product;

  MealType? mealType;

  @override
  Map<String, dynamic> toJson() => {
        'product': product,
        'mealType': mealType,
        ...super.toJson(),
      };

  static ProductMealType fromJson(Map<String, dynamic> json) => ProductMealType(
        product:
            json['product'] != null ? Product.fromJson(json['product']) : null,
        mealType: json['mealType'] != null
            ? MealType.fromJson(json['mealType'])
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
