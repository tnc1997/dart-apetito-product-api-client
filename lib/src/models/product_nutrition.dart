import 'model.dart';
import 'nutrition.dart';
import 'product.dart';

class ProductNutrition extends Model<String> {
  ProductNutrition({
    this.per100G,
    this.perPortion,
    this.light,
    this.percentageOfReferenceIntake,
    this.product,
    this.nutrition,
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

  String? per100G;

  String? perPortion;

  String? light;

  double? percentageOfReferenceIntake;

  Product? product;

  Nutrition? nutrition;

  @override
  Map<String, dynamic> toJson() => {
        'per100G': per100G,
        'perPortion': perPortion,
        'light': light,
        'percentageOfReferenceIntake': percentageOfReferenceIntake,
        'product': product,
        'nutrition': nutrition,
        ...super.toJson(),
      };

  static ProductNutrition fromJson(Map<String, dynamic> json) =>
      ProductNutrition(
        per100G: json['per100G'],
        perPortion: json['perPortion'],
        light: json['light'],
        percentageOfReferenceIntake:
            (json['percentageOfReferenceIntake'] as num?)?.toDouble(),
        product:
            json['product'] != null ? Product.fromJson(json['product']) : null,
        nutrition: json['nutrition'] != null
            ? Nutrition.fromJson(json['nutrition'])
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
