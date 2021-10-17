import 'market_vertical.dart';
import 'model.dart';
import 'product_group.dart';

class ProductGroupMarketVertical extends Model<String> {
  ProductGroupMarketVertical({
    this.value,
    this.productGroup,
    this.marketVertical,
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

  String? value;

  ProductGroup? productGroup;

  MarketVertical? marketVertical;

  @override
  Map<String, dynamic> toJson() => {
        'value': value,
        'productGroup': productGroup,
        'marketVertical': marketVertical,
        ...super.toJson(),
      };

  static ProductGroupMarketVertical fromJson(Map<String, dynamic> json) =>
      ProductGroupMarketVertical(
        value: json['value'],
        productGroup: json['productGroup'] != null
            ? ProductGroup.fromJson(json['productGroup'])
            : null,
        marketVertical: json['marketVertical'] != null
            ? MarketVertical.fromJson(json['marketVertical'])
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
