import 'diet.dart';
import 'model.dart';
import 'product.dart';

class ProductDiet extends Model<String> {
  ProductDiet({
    this.product,
    this.diet,
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

  Diet? diet;

  @override
  Map<String, dynamic> toJson() => {
        'product': product,
        'diet': diet,
        ...super.toJson(),
      };

  static ProductDiet fromJson(Map<String, dynamic> json) => ProductDiet(
        product:
            json['product'] != null ? Product.fromJson(json['product']) : null,
        diet: json['diet'] != null ? Diet.fromJson(json['diet']) : null,
        id: json['id'],
        created:
            json['created'] != null ? DateTime.parse(json['created']) : null,
        creator: json['creator'],
        updated:
            json['updated'] != null ? DateTime.parse(json['updated']) : null,
        updater: json['updater'],
      );
}
