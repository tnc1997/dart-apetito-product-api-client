import 'free_from.dart';
import 'model.dart';
import 'product.dart';

class ProductFreeFrom extends Model<String> {
  ProductFreeFrom({
    this.product,
    this.freeFrom,
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

  FreeFrom? freeFrom;

  @override
  Map<String, dynamic> toJson() => {
        'product': product,
        'freeFrom': freeFrom,
        ...super.toJson(),
      };

  static ProductFreeFrom fromJson(Map<String, dynamic> json) => ProductFreeFrom(
        product:
            json['product'] != null ? Product.fromJson(json['product']) : null,
        freeFrom: json['freeFrom'] != null
            ? FreeFrom.fromJson(json['freeFrom'])
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
