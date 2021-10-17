import 'model.dart';
import 'product_group.dart';
import 'ranking.dart';

class ProductGroupRanking extends Model<String> {
  ProductGroupRanking({
    this.value,
    this.productGroup,
    this.ranking,
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

  int? value;

  ProductGroup? productGroup;

  Ranking? ranking;

  @override
  Map<String, dynamic> toJson() => {
        'value': value,
        'productGroup': productGroup,
        'ranking': ranking,
        ...super.toJson(),
      };

  static ProductGroupRanking fromJson(Map<String, dynamic> json) =>
      ProductGroupRanking(
        value: (json['value'] as num?)?.toInt(),
        productGroup: json['productGroup'] != null
            ? ProductGroup.fromJson(json['productGroup'])
            : null,
        ranking:
            json['ranking'] != null ? Ranking.fromJson(json['ranking']) : null,
        id: json['id'],
        created:
            json['created'] != null ? DateTime.parse(json['created']) : null,
        creator: json['creator'],
        updated:
            json['updated'] != null ? DateTime.parse(json['updated']) : null,
        updater: json['updater'],
      );
}
