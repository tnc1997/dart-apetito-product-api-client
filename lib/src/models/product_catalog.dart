import 'catalog.dart';
import 'model.dart';
import 'product.dart';

class ProductCatalog extends Model<String> {
  ProductCatalog({
    this.product,
    this.catalog,
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

  Catalog? catalog;

  @override
  Map<String, dynamic> toJson() => {
        'product': product,
        'catalog': catalog,
        ...super.toJson(),
      };

  static ProductCatalog fromJson(Map<String, dynamic> json) => ProductCatalog(
        product:
            json['product'] != null ? Product.fromJson(json['product']) : null,
        catalog:
            json['catalog'] != null ? Catalog.fromJson(json['catalog']) : null,
        id: json['id'],
        created:
            json['created'] != null ? DateTime.parse(json['created']) : null,
        creator: json['creator'],
        updated:
            json['updated'] != null ? DateTime.parse(json['updated']) : null,
        updater: json['updater'],
      );
}
