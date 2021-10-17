import 'made_without.dart';
import 'model.dart';
import 'product.dart';

class ProductMadeWithout extends Model<String> {
  ProductMadeWithout({
    this.product,
    this.madeWithout,
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

  MadeWithout? madeWithout;

  @override
  Map<String, dynamic> toJson() => {
        'product': product,
        'madeWithout': madeWithout,
        ...super.toJson(),
      };

  static ProductMadeWithout fromJson(Map<String, dynamic> json) =>
      ProductMadeWithout(
        product:
            json['product'] != null ? Product.fromJson(json['product']) : null,
        madeWithout: json['madeWithout'] != null
            ? MadeWithout.fromJson(json['madeWithout'])
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
