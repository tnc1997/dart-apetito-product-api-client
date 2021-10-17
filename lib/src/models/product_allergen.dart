import 'allergen.dart';
import 'model.dart';
import 'product.dart';

class ProductAllergen extends Model<String> {
  ProductAllergen({
    this.declaration,
    this.product,
    this.allergen,
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

  String? declaration;

  Product? product;

  Allergen? allergen;

  @override
  Map<String, dynamic> toJson() => {
        'declaration': declaration,
        'product': product,
        'allergen': allergen,
        ...super.toJson(),
      };

  static ProductAllergen fromJson(Map<String, dynamic> json) => ProductAllergen(
        declaration: json['declaration'],
        product:
            json['product'] != null ? Product.fromJson(json['product']) : null,
        allergen: json['allergen'] != null
            ? Allergen.fromJson(json['allergen'])
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
