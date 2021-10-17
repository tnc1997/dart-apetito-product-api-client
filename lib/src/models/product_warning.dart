import 'model.dart';
import 'product.dart';
import 'warning.dart';

class ProductWarning extends Model<String> {
  ProductWarning({
    this.product,
    this.warning,
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

  Warning? warning;

  @override
  Map<String, dynamic> toJson() => {
        'product': product,
        'warning': warning,
        ...super.toJson(),
      };

  static ProductWarning fromJson(Map<String, dynamic> json) => ProductWarning(
        product:
            json['product'] != null ? Product.fromJson(json['product']) : null,
        warning:
            json['warning'] != null ? Warning.fromJson(json['warning']) : null,
        id: json['id'],
        created:
            json['created'] != null ? DateTime.parse(json['created']) : null,
        creator: json['creator'],
        updated:
            json['updated'] != null ? DateTime.parse(json['updated']) : null,
        updater: json['updater'],
      );
}
