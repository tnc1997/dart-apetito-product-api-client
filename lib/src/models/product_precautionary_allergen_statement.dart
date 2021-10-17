import 'model.dart';
import 'precautionary_allergen_statement.dart';
import 'product.dart';

class ProductPrecautionaryAllergenStatement extends Model<String> {
  ProductPrecautionaryAllergenStatement({
    this.product,
    this.precautionaryAllergenStatement,
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

  PrecautionaryAllergenStatement? precautionaryAllergenStatement;

  @override
  Map<String, dynamic> toJson() => {
        'product': product,
        'precautionaryAllergenStatement': precautionaryAllergenStatement,
        ...super.toJson(),
      };

  static ProductPrecautionaryAllergenStatement fromJson(
          Map<String, dynamic> json) =>
      ProductPrecautionaryAllergenStatement(
        product:
            json['product'] != null ? Product.fromJson(json['product']) : null,
        precautionaryAllergenStatement:
            json['precautionaryAllergenStatement'] != null
                ? PrecautionaryAllergenStatement.fromJson(
                    json['precautionaryAllergenStatement'])
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
